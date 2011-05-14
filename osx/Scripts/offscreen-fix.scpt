tell application "System Events"
    tell (a reference to (first process whose frontmost is true))
        set visible to false
    end tell
end tell

tell application "System Events"
    set FrontApplication to (get name of first process whose frontmost is true) as string
    --display dialog "FrontApplication = " & FrontApplication
    try
        tell process FrontApplication
            set position of window 1 to {0, 22}
            --window 1 is always the frontmost window.
        end tell
    on error
        display dialog "Exception - FrontApplication = " & FrontApplication
    end try
end tell

