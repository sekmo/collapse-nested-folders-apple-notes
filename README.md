# Collapse nested folders in Apple Notes

A Shortcut that collapses all the folders in the Apple Notes sidebar. Nested folders too.

## Install

1. Double-click `collapse_nested_folders_apple_notes.shortcut` and click Add Shortcut.
2. Go to System Settings > Privacy & Security > Accessibility and enable Shortcuts.
3. Keep the Notes sidebar visible when you run it (View > Show Folders).

## How it works

The Shortcut runs the AppleScript in `collapse.applescript`. It uses System Events to read the sidebar of Notes, row by row. If a folder is open, it closes it. It starts from the last row and goes up, so the rows above do not move. The top account row (for example iCloud) stays open, so you still see your folders.
