/// @author YellowAfterlife

#include "stdafx.h"
#include <stdio.h>
#include <Windows.h>
#include <shellapi.h>
#include <string>
//
#define dllx extern "C" __declspec(dllexport)
#define trace(...) { printf(__VA_ARGS__); printf("\n"); fflush(stdout); }
class StringConv {
    public:
    char* cbuf = NULL;
    size_t cbuf_size = 0;
    WCHAR* wbuf = NULL;
    size_t wbuf_size = 0;
    StringConv() {

    }
    LPCWSTR wget(size_t size) {
        if (wbuf_size < size) {
            if (wbuf != NULL) delete wbuf;
            wbuf = new WCHAR[size];
            wbuf_size = size;
        }
        return wbuf;
    }
    LPCWSTR proc(char* src, int cp = CP_UTF8) {
        size_t size = MultiByteToWideChar(cp, 0, src, -1, NULL, 0);
        LPCWSTR buf = wget(size);
        MultiByteToWideChar(cp, 0, src, -1, wbuf, size);
        return wbuf;
    }
    char* get(size_t size) {
        if (cbuf_size < size) {
            if (cbuf != NULL) delete cbuf;
            cbuf = new char[size];
            cbuf_size = size;
        }
        return cbuf;
    }
    char* proc(LPCWSTR src, int cp = CP_UTF8) {
        size_t size = WideCharToMultiByte(cp, 0, src, -1, NULL, 0, NULL, NULL);
        char* buf = get(size);
        WideCharToMultiByte(cp, 0, src, -1, buf, size, NULL, NULL);
        return buf;
    }
} c1, c2;

#pragma region Status
DWORD nsfs_status;
dllx double nsfs_get_status() {
    return nsfs_status;
}
bool nsfs_ret_code(DWORD status) {
    nsfs_status = status;
    return status == 0;
}
bool nsfs_ret_error(BOOL status) {
    if (status) {
        nsfs_status = 0;
        return true;
    } else {
        nsfs_status = GetLastError();
        return false;
    }
}
#pragma endregion

#pragma region Init
dllx char* nsfs_get_directory() {
    static WCHAR cwd[4096];
    if (GetCurrentDirectory(4096, cwd)) {
        nsfs_status = 0;
        return c1.proc(cwd);
    } else {
        nsfs_status = GetLastError();
        return "";
    }
}
dllx double nsfs_set_directory(char* cwd) {
    return nsfs_ret_error(SetCurrentDirectory(c1.proc(cwd)));
}
dllx double nsfs_init_raw() {
    nsfs_status = 0;
    return 1;
}
#pragma endregion

#pragma region file_
/// returned values as per https://msdn.microsoft.com/en-us/library/windows/desktop/gg258117(v=vs.85).aspx
dllx double file_get_attributes_ns(char* path) {
    auto r = GetFileAttributes(c1.proc(path));
    if (r == INVALID_FILE_ATTRIBUTES) {
        nsfs_status = GetLastError();
    } else nsfs_status = 0;
    return r;
}

/// flags as per https://msdn.microsoft.com/en-us/library/windows/desktop/gg258117(v=vs.85).aspx
dllx double file_set_attributes_ns(char* path, double flags) {
    return nsfs_ret_error(SetFileAttributes(c1.proc(path), (DWORD)flags));
}

/// Returns size of the given file, in bytes.
dllx double file_get_size_ns(char* path) {
    HANDLE h = CreateFile(c1.proc(path), GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE,
        NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (h == INVALID_HANDLE_VALUE) {
        nsfs_status = GetLastError();
        return -1;
    }
    LARGE_INTEGER lsize;
    INT64 size = GetFileSizeEx(h, &lsize) ? lsize.QuadPart : -1;
    CloseHandle(h);
    return (double)size;
}

int file_operation(UINT wFunc, char* pFrom, char* pTo) {
    // "Note: This string must be double-null terminated."
    LPCWSTR wFrom = c1.proc(pFrom);
    size_t lFrom = wcslen(wFrom);
    LPWSTR zFrom = new WCHAR[lFrom + 2];
    wcscpy(zFrom, wFrom);
    zFrom[lFrom + 1] = 0;
    //
    LPCWSTR wTo = c2.proc(pTo);
    size_t lTo = wcslen(wTo);
    LPWSTR zTo = new WCHAR[lTo + 2];
    wcscpy(zTo, wTo);
    zTo[lTo + 1] = 0;
    //
    SHFILEOPSTRUCT op;
    op.hwnd = nullptr;
    op.wFunc = wFunc;
    op.pFrom = zFrom;
    op.pTo = zTo;
    op.fFlags = FOF_NOCONFIRMATION | FOF_NOERRORUI | FOF_SILENT;
    op.fAnyOperationsAborted = false;
    op.hNameMappings = nullptr;
    op.lpszProgressTitle = L"";
    //
    int r = SHFileOperation(&op);
    delete zFrom;
    delete zTo;
    return nsfs_ret_code(r);
}

/// 
dllx double file_exists_ns(char* path) {
    LPCWSTR wpath = c1.proc(path);
    DWORD d = GetFileAttributes(wpath);
    bool r = (d != INVALID_FILE_ATTRIBUTES && (d & FILE_ATTRIBUTE_DIRECTORY) == 0);
    return r;
}

/// 
dllx double directory_exists_ns(char* path) {
    LPCWSTR wpath = c1.proc(path);
    DWORD d = GetFileAttributes(wpath);
    bool r = (d != INVALID_FILE_ATTRIBUTES && (d & FILE_ATTRIBUTE_DIRECTORY) != 0);
    return r;
}

/// 
dllx double file_delete_ns(char* path) {
    LPCWSTR wpath = c1.proc(path);
    DWORD attr = GetFileAttributes(wpath);
    if (attr != INVALID_FILE_ATTRIBUTES) {
        if (attr & FILE_ATTRIBUTE_READONLY) {
            SetFileAttributes(wpath, attr & (FILE_ATTRIBUTE_READONLY));
        }
        return DeleteFile(c1.proc(path));
    }
    return false;
}

///
dllx double directory_delete_ns(char* path) {
    return file_operation(FO_DELETE, path, "");
}

///
dllx double file_copy_ns(char* from, char* to) {
    return nsfs_ret_error(CopyFile(c1.proc(from), c2.proc(to), false));
}

///
dllx double directory_copy_ns(char* from, char* to) {
    return file_operation(FO_COPY, from, to);
}

///
dllx double file_rename_ns(char* from, char* to) {
    return file_operation(FO_RENAME, from, to);
}

///
dllx double directory_rename_ns(char* from, char* to) {
    return file_operation(FO_RENAME, from, to);
}

///
dllx double file_move_ns(char* from, char* to) {
    return file_operation(FO_MOVE, from, to);
}

///
dllx double directory_move_ns(char* from, char* to) {
    return file_operation(FO_MOVE, from, to);
}

#pragma endregion

#pragma region file_find
HANDLE file_find_handle = INVALID_HANDLE_VALUE;
WIN32_FIND_DATA file_find_data;
/// 
dllx char* file_find_first_ns(char* mask) {
    if (file_find_handle != INVALID_HANDLE_VALUE) FindClose(file_find_handle);
    file_find_handle = FindFirstFile(c1.proc(mask), &file_find_data);
    if (file_find_handle != INVALID_HANDLE_VALUE) {
        nsfs_status = 0;
        return c1.proc(file_find_data.cFileName);
    } else {
        nsfs_status = GetLastError();
        return "";
    }
}
/// 
dllx char* file_find_next_ns() {
    if (file_find_handle != INVALID_HANDLE_VALUE) {
        if (FindNextFile(file_find_handle, &file_find_data) != 0) {
            return c1.proc(file_find_data.cFileName);
        }
    }
    return "";
}
/// 
dllx double file_find_close_ns() {
    if (file_find_handle != INVALID_HANDLE_VALUE) {
        return FindClose(file_find_handle);
    } else return false;
}
/// Returns the attributes of the current file in file_find
dllx double file_find_attributes_ns() {
    return file_find_data.dwFileAttributes;
}
/// Returns the size (in bytes) of the current file in file_find
dllx double file_find_size_ns() {
    return (double)((UINT64)file_find_data.nFileSizeLow | ((UINT64)file_find_data.nFileSizeHigh << 32));
}
#pragma endregion

#pragma region file_text
const int file_text_num = 32;
struct file_text_t {
    int mode = 0;
    HANDLE file = INVALID_HANDLE_VALUE;
    long size;
    bool eof;
    int codepage;
} file_text[file_text_num];

int file_text_alloc_index() {
    for (int i = 0; i < file_text_num; i++) {
        if (file_text[i].mode == 0) return i;
    }
    return -1;
}
/// Codepage can be set to -1 for default (UTF-8)
dllx double file_text_open_read_ns(char* path, double codepage) {
    int i = file_text_alloc_index();
    if (i < 0) return -1;
    //
    HANDLE file = CreateFile(c1.proc(path),
        GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL, NULL);
    if (file != INVALID_HANDLE_VALUE) {
        file_text_t* next = &file_text[i];
        next->mode = 1;
        next->file = file;
        next->size = GetFileSize(file, 0);
        next->eof = next->size == 0;
        int cp = (int)codepage;
        if (cp == -1) cp = CP_UTF8;
        next->codepage = cp;
        nsfs_status = 0;
        return i;
    } else {
        nsfs_status = GetLastError();
        return -1;
    }
}
/// Codepage can be set to -1 for default (UTF-8)
dllx double file_text_open_write_ns(char* path, double codepage) {
    int i = file_text_alloc_index();
    if (i < 0) return -1;
    //
    HANDLE file = CreateFile(c1.proc(path),
        GENERIC_WRITE, FILE_SHARE_WRITE, NULL, CREATE_ALWAYS,
        FILE_ATTRIBUTE_NORMAL, NULL);
    if (file != INVALID_HANDLE_VALUE) {
        file_text_t* next = &file_text[i];
        next->mode = 2;
        next->file = file;
        next->size = -1;
        next->eof = false;
        int cp = (int)codepage;
        if (cp == -1) cp = CP_UTF8;
        next->codepage = cp;
        nsfs_status = 0;
        return i;
    } else {
        nsfs_status = GetLastError();
        return -1;
    }
}
/// Codepage can be set to -1 for default (UTF-8)
dllx double file_text_open_append_ns(char* path, double codepage) {
	int i = file_text_alloc_index();
	if (i < 0) return -1;
	//
	HANDLE file = CreateFile(c1.proc(path),
		FILE_APPEND_DATA, FILE_SHARE_READ, NULL, OPEN_ALWAYS,
		FILE_ATTRIBUTE_NORMAL, NULL);
	if (file != INVALID_HANDLE_VALUE) {
		file_text_t* next = &file_text[i];
		next->mode = 2;
		next->file = file;
		next->size = SetFilePointer(file, 0, NULL, FILE_END);
		if (next->size == 0) next->size = -1;
		next->eof = false;
		int cp = (int)codepage;
		if (cp == -1) cp = CP_UTF8;
		next->codepage = cp;
		nsfs_status = 0;
		return i;
	} else {
		nsfs_status = GetLastError();
		return -1;
	}
}
///
dllx double file_text_close_ns(double fileid) {
    int i = (int)fileid;
    if (i >= 0 && i < file_text_num) {
        file_text_t* f = &file_text[i];
        if (f->mode != 0) {
            if (CloseHandle(f->file)) {
                f->file = INVALID_HANDLE_VALUE;
                f->mode = 0;
                return true;
            }
        }
    }
    return false;
}
///
dllx double file_text_eof_ns(double fileid) {
    int i = (int)fileid;
    if (i >= 0 && i < file_text_num) {
        file_text_t* f = &file_text[i];
        if (f->mode != 0) {
            return f->eof;
        }
    }
    return true;
}
/// Reads the next line from a file, skips line separators after it.
dllx char* file_text_read_line_ns(double fileid) {
    int i = (int)fileid;
    if (i >= 0 && i < file_text_num) {
        file_text_t* f = &file_text[i];
        if ((f->mode & 1) && !f->eof) {
            HANDLE q = file_text[i].file;
            BYTE next; DWORD length = 0, read; bool eof = false;
            for (;;) {
                ReadFile(q, &next, 1, &read, NULL);
                if (read > 0) {
                    if (next == '\r' || next == '\n') {
                        break;
                    } else length += 1;
                } else {
                    eof = true;
                    break;
                }
            }
            //
            char* out = c1.get(length + 1);
            out[length] = 0;
            SetFilePointer(q, -(long)length - (eof ? 0 : 1), NULL, FILE_CURRENT);
            ReadFile(q, out, length, &read, NULL);
            int cp = f->codepage;
            if (cp != CP_UTF8) {
                LPCWSTR wide = c1.proc(out, cp);
                out = c1.proc(wide);
            }
            if (!eof) {
                ReadFile(q, &next, 1, &read, NULL);
                BYTE other = next == '\r' ? '\n' : '\r';
                ReadFile(q, &next, 1, &read, NULL);
                if (read > 0) {
                    if (next != other) {
                        SetFilePointer(q, -1, NULL, FILE_CURRENT);
                    }
                } else f->eof = true;
            } else f->eof = true;
            //
            return out;
        }
    }
    return "";
}
char* file_text_linebreak = "\r\n";
/// Writes a line and line separators into a file.
dllx double file_text_write_line_ns(double fileid, char* text) {
    int i = (int)fileid;
    if (i >= 0 && i < file_text_num) {
        file_text_t* ft = &file_text[i];
        if (ft->mode & 2) {
            HANDLE f = ft->file;
            DWORD written;
            if (ft->size >= 0) {
                WriteFile(f, file_text_linebreak, 2, &written, NULL);
                ft->size += written;
            } else ft->size = 0;
            int cp = ft->codepage;
            if (cp != CP_UTF8) {
                LPCWSTR wide = c1.proc(text);
                text = c1.proc(wide, cp);
            }
            int size = strlen(text);
            WriteFile(f, text, size, &written, NULL);
            ft->size += written;
            return true;
        }
    }
    return false;
}
#pragma endregion

#pragma region buffer_
HANDLE buffer_load_file = INVALID_HANDLE_VALUE;
dllx double buffer_load_ns_raw1(char* path) {
    buffer_load_file = CreateFile(c1.proc(path),
        GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL, NULL);
    if (buffer_load_file != INVALID_HANDLE_VALUE) {
        nsfs_status = 0;
        return GetFileSize(buffer_load_file, 0);
    } else {
        nsfs_status = GetLastError();
        return -1;
    }
}
dllx double buffer_load_ns_raw2(char* cbuf, double len) {
    if (buffer_load_file != INVALID_HANDLE_VALUE) {
        // ReadFile(q, &next, 1, &read, NULL);
        DWORD read;
        ReadFile(buffer_load_file, cbuf, (DWORD)len, &read, NULL);
        CloseHandle(buffer_load_file);
        buffer_load_file = INVALID_HANDLE_VALUE;
        return read;
    } else return -1;
}
dllx double buffer_save_ns_raw(char* cbuf, char* path, double len) {
    HANDLE file = CreateFile(c1.proc(path),
        GENERIC_WRITE, FILE_SHARE_WRITE, NULL, CREATE_ALWAYS,
        FILE_ATTRIBUTE_NORMAL, NULL);
    if (file != INVALID_HANDLE_VALUE) {
        DWORD r = 0;
        WriteFile(file, cbuf, (DWORD)len, &r, NULL) ? r : -1;
        CloseHandle(file);
        nsfs_status = 0;
        return r;
    } else {
        nsfs_status = GetLastError();
        return -1;
    }
}
#pragma endregion

#pragma region string
/// Converts a string between codepages. From/to can be set to -1 for UTF-8
dllx char* string_codepage(char* str, double codepage_from, double codepage_to) {
    int cp0 = (int)codepage_from; if (cp0 == -1) cp0 = CP_UTF8;
    int cp1 = (int)codepage_to; if (cp1 == -1) cp1 = CP_UTF8;
    return c1.proc(c1.proc(str, cp0), cp1);
}
#pragma endregion
