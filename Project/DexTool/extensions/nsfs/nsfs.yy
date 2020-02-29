{
    "id": "fc6fc6b4-1d38-400c-9afc-96019ecda777",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "nsfs",
    "IncludedResources": [
        "Sprites\\spr_nsfs_demo_white32",
        "Scripts\\demo-scripts\\demo_button",
        "Scripts\\demo-scripts\\demo_trace",
        "Scripts\\demo-scripts\\demo_prompt",
        "Scripts\\demo-scripts\\demo_param",
        "Scripts\\demo-scripts\\demo_sfmt",
        "Scripts\\demo-scripts\\demo_status",
        "Fonts\\fnt_nsfs_demo",
        "Objects\\obj_nsfs_demo",
        "Rooms\\rm_nsfs_demo",
        "Included Files\\nsfs-doc.html"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2020-06-28 08:02:09",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "cd973297-542a-4182-a2c8-2ab7cf9425f5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 113497714299118,
            "filename": "nsfs.dll",
            "final": "",
            "functions": [
                {
                    "id": "8a5e2c87-f313-4404-98be-b89f6005fe04",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "nsfs_get_status",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_get_status",
                    "returnType": 2
                },
                {
                    "id": "5c323e8b-deb5-42c6-ab8a-20c2db2b2a3f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "nsfs_get_directory",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_get_directory",
                    "returnType": 1
                },
                {
                    "id": "2e33667f-fa5f-404e-b07f-c12c2f7f9214",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "nsfs_set_directory",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_set_directory",
                    "returnType": 2
                },
                {
                    "id": "693ab6e4-2a75-4e39-b1db-a3df0f9382e2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "nsfs_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_init_raw",
                    "returnType": 2
                },
                {
                    "id": "6be06b65-b33a-4c5b-b12a-414adac8e60f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_get_attributes_ns",
                    "help": "file_get_attributes_ns(path) : returned values as per https:\/\/msdn.microsoft.com\/en-us\/library\/windows\/desktop\/gg258117(v=vs.85).aspx",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_get_attributes_ns",
                    "returnType": 2
                },
                {
                    "id": "586eaead-a6ce-451a-aa11-51a2f911d88b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_set_attributes_ns",
                    "help": "file_set_attributes_ns(path, flags) : flags as per https:\/\/msdn.microsoft.com\/en-us\/library\/windows\/desktop\/gg258117(v=vs.85).aspx",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_set_attributes_ns",
                    "returnType": 2
                },
                {
                    "id": "7dc5a0b2-fc1e-4c64-a7cd-b5507ece9ef0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_get_size_ns",
                    "help": "file_get_size_ns(path) : Returns size of the given file, in bytes.",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_get_size_ns",
                    "returnType": 2
                },
                {
                    "id": "893cd364-6962-4362-8316-d9a22ece42b6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_exists_ns",
                    "help": "file_exists_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_exists_ns",
                    "returnType": 2
                },
                {
                    "id": "8d21692a-87d1-48f8-a6dc-e23ef28b2424",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_exists_ns",
                    "help": "directory_exists_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_exists_ns",
                    "returnType": 2
                },
                {
                    "id": "16547b83-71f1-41ae-88f6-244d83f14d35",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_delete_ns",
                    "help": "file_delete_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_delete_ns",
                    "returnType": 2
                },
                {
                    "id": "c02a300a-5ce2-4d17-ab84-b2bb1e928317",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_delete_ns",
                    "help": "directory_delete_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_delete_ns",
                    "returnType": 2
                },
                {
                    "id": "2a72ec59-da68-49e1-bf89-46a6761817ce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_copy_ns",
                    "help": "file_copy_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_copy_ns",
                    "returnType": 2
                },
                {
                    "id": "594a2818-7296-484d-90c1-91c611a0c696",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_copy_ns",
                    "help": "directory_copy_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_copy_ns",
                    "returnType": 2
                },
                {
                    "id": "218d11b6-7cbe-4e83-b656-d3c137fd2ca6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_rename_ns",
                    "help": "file_rename_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_rename_ns",
                    "returnType": 2
                },
                {
                    "id": "29be0ddd-1090-41bf-801f-84491d7d0d62",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_rename_ns",
                    "help": "directory_rename_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_rename_ns",
                    "returnType": 2
                },
                {
                    "id": "79efc46c-04ba-4a7b-a939-e30346205af4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_move_ns",
                    "help": "file_move_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_move_ns",
                    "returnType": 2
                },
                {
                    "id": "44166caf-110c-441e-a976-2eef1146ecb4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_move_ns",
                    "help": "directory_move_ns(from, to)",
                    "hidden": false,
                    "kind": 11,
                    "name": "directory_move_ns",
                    "returnType": 2
                },
                {
                    "id": "c3d32900-7bdc-4dd8-99d2-2dfc9df284f3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_find_first_ns",
                    "help": "file_find_first_ns(mask)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_first_ns",
                    "returnType": 1
                },
                {
                    "id": "71965a0d-64ba-4756-8178-f0683b9c11ae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_next_ns",
                    "help": "file_find_next_ns()",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_next_ns",
                    "returnType": 1
                },
                {
                    "id": "3d20b63c-a75e-445b-9c6c-46d3cc20f631",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_close_ns",
                    "help": "file_find_close_ns()",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_close_ns",
                    "returnType": 2
                },
                {
                    "id": "938d121d-9593-4ee0-889d-2e8148fa49a8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_attributes_ns",
                    "help": "file_find_attributes_ns() : Returns the attributes of the current file in file_find",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_attributes_ns",
                    "returnType": 2
                },
                {
                    "id": "4fceaf10-b76e-4ff0-983e-bc7d32c6434e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_size_ns",
                    "help": "file_find_size_ns() : Returns the size (in bytes) of the current file in file_find",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_find_size_ns",
                    "returnType": 2
                },
                {
                    "id": "30d42e51-0cce-4a22-99d3-f96a587125a9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_text_open_read_ns",
                    "help": "file_text_open_read_ns(path, codepage) : Codepage can be set to -1 for default (UTF-8)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_open_read_ns",
                    "returnType": 2
                },
                {
                    "id": "de7706d7-114c-4c20-8861-5a8eaa9f10d4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_text_open_write_ns",
                    "help": "file_text_open_write_ns(path, codepage) : Codepage can be set to -1 for default (UTF-8)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_open_write_ns",
                    "returnType": 2
                },
                {
                    "id": "de8fde62-93d6-4dd1-aa20-615789c6c143",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_text_open_append_ns",
                    "help": "file_text_open_append_ns(path, codepage) : Codepage can be set to -1 for default (UTF-8)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_open_append_ns",
                    "returnType": 2
                },
                {
                    "id": "e80a5485-8a78-446d-8b88-95096b99bf69",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_close_ns",
                    "help": "file_text_close_ns(fileid)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_close_ns",
                    "returnType": 2
                },
                {
                    "id": "7d1be8f8-875f-4b7c-8214-630082b508f1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_eof_ns",
                    "help": "file_text_eof_ns(fileid)",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_eof_ns",
                    "returnType": 2
                },
                {
                    "id": "8ee76908-99db-4e97-8587-2e732c4e571b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_read_line_ns",
                    "help": "file_text_read_line_ns(fileid) : Reads the next line from a file, skips line separators after it.",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_read_line_ns",
                    "returnType": 1
                },
                {
                    "id": "744891c8-5641-4fd3-aa5d-ed77b3189114",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "file_text_write_line_ns",
                    "help": "file_text_write_line_ns(fileid, text) : Writes a line and line separators into a file.",
                    "hidden": false,
                    "kind": 11,
                    "name": "file_text_write_line_ns",
                    "returnType": 2
                },
                {
                    "id": "f51af947-bc59-4539-806a-a2257d7b1bd8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "buffer_load_ns_raw1",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_load_ns_raw1",
                    "returnType": 2
                },
                {
                    "id": "3eb989f2-1e9f-439e-a20d-3f8361827b8b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "buffer_load_ns_raw2",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_load_ns_raw2",
                    "returnType": 2
                },
                {
                    "id": "ea83b5d2-88b6-4ed2-8fb0-1c18f423e1af",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "buffer_save_ns_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_save_ns_raw",
                    "returnType": 2
                },
                {
                    "id": "7f16a777-0e99-4b90-be7a-26933f2c0f99",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "string_codepage",
                    "help": "string_codepage(str, codepage_from, codepage_to) : Converts a string between codepages. From\/to can be set to -1 for UTF-8",
                    "hidden": false,
                    "kind": 11,
                    "name": "string_codepage",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\nsfs.dll",
            "uncompress": false
        },
        {
            "id": "fc7c3762-a5bb-43bf-a7f4-8166f50b0358",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "c4848edc-7785-4865-bb33-9607e5b962f5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "nsfs_status",
                    "hidden": false,
                    "value": "nsfs_get_status()"
                },
                {
                    "id": "ce2d59a1-072c-4baf-8554-88d767e779d5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "nsfs_is_available",
                    "hidden": false,
                    "value": "global.g_nsfs_is_available"
                }
            ],
            "copyToTargets": 113497714299118,
            "filename": "nsfs.gml",
            "final": "",
            "functions": [
                {
                    "id": "a6676f4e-0e6b-48c4-9c9e-57f09d6dc7b8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "nsfs_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "nsfs_init",
                    "returnType": 2
                },
                {
                    "id": "60b33583-6719-493e-abf3-8d1262c6cfa6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "buffer_load_ns",
                    "help": "buffer_load_ns(path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_load_ns",
                    "returnType": 2
                },
                {
                    "id": "1fe73f95-a0f3-4e8d-89eb-5e99f95cb67a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "buffer_save_ns",
                    "help": "buffer_save_ns(buffer, path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_save_ns",
                    "returnType": 2
                },
                {
                    "id": "c135e6c6-0797-4c66-9f94-1fdd08bfaabd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "buffer_save_ext_ns",
                    "help": "buffer_save_ext_ns(buffer, path, offset, size)",
                    "hidden": false,
                    "kind": 11,
                    "name": "buffer_save_ext_ns",
                    "returnType": 2
                }
            ],
            "init": "nsfs_init",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "cc.yal.nsfs",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.2"
}