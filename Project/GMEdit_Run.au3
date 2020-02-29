$bound = False
$suffix = " - GMEdit"
$suffixLen = StringLen($suffix)
while 1 ; bind/unbind the hotkey as we switch to/from GMEdit
    $title = WinGetTitle("[ACTIVE]")
    $newBound = (StringLen($title) > $suffixLen And StringRight($title, $suffixLen) == $suffix)
    If (Not $bound And $newBound) Then
        HotKeySet("{F5}", "OnRun")
    ElseIf ($bound And Not $newBound) Then
        HotKeySet("{F5}")
    EndIf
    $bound = $newBound
    sleep(250)
wend
Func OnRun()
    $orig = WinGetHandle("[ACTIVE]")
    $title = WinGetTitle("[ACTIVE]")
    $titleLen = StringLen($title)
    ; check that it's still GMEdit just to be really sure:
    $newBound = ($titleLen > $suffixLen And StringRight($title, $suffixLen) == $suffix)
    If (Not $newBound) Then Exit
    ; get the project name from GMEdit window title:
    $project = StringLeft($title, $titleLen - $suffixLen)
    ; make a regular expression to find the matching GM:S/GMS2 editor:
    If (StringRight($project, 4) == ".yyp") Then
        $rx = StringLeft($project, StringLen($project) - 4)
        $rx = StringReplace($rx, ".", "\.")
        $rx = "^" & $rx & " - GameMaker Studio 2"
    Else
        $rx = StringReplace($project, ".", "\.")
        $rx = "^" & $rx & "\*?\b.+\(v[\d.]+\)\s*$" ; "[project name] ... (v1.4.xxxx)"
    EndIf
    ; and send a F5 key there:
    $def = "[REGEXPTITLE:" & $rx & "]"
    $hwnd = WinGetHandle($def)
    $out = ControlSend($hwnd, "", "", "{F5}")
    ConsoleWrite($hwnd & " " & WinGetTitle($hwnd) & " r" & $out & " e" & @error & @CRLF)
EndFunc