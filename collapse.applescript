on sidebarOutline()
	tell application "System Events"
		tell process "Notes"
			try
				return outline 1 of scroll area 1 of group 1 of splitter group 1 of window 1
			on error
				return outline 1 of scroll area 1 of splitter group 1 of window 1
			end try
		end tell
	end tell
end sidebarOutline

on run {input, parameters}
	tell application "Notes" to activate
	tell application "System Events"
		set rowCount to count of rows of my sidebarOutline()
		repeat with i from rowCount to 1 by -1
			try
				set r to row i of my sidebarOutline()
				if (value of attribute "AXDisclosureLevel" of r) >= 1 and (value of attribute "AXDisclosing" of r) is true then
					set value of attribute "AXDisclosing" of r to false
				end if
			end try
		end repeat
	end tell
	return input
end run
