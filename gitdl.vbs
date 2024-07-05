Set objShell = CreateObject("WScript.Shell")

' Change directory to the current directory where this script is located
objShell.CurrentDirectory = objShell.CurrentDirectory & "\"

' Command to delete .git directory and its contents
objShell.Run "cmd /c rd /s /q .git", 0, True
WScript.Sleep 1000 ' Pause for 1 second (optional)

' Command to delete this script itself
objShell.Run "cmd /c del """ & WScript.ScriptFullName & """", 0, True
