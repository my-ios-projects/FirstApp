# FirstApp
Some basic iOS concepts. 

### 1 App Delegate:
It a class that listen to the system event; Or system calls some methods of that class if some events happends.
Events like (App Starts, App goes to background, App Terminates, Memory Warnings, ...). So that you can handle the situation like saving data or whatever.

### Will/Did methods:
- `view`: is the screen.
- `Will`: means right before.
- `Did`: means right after.
- So `viewWillX` methods always are called before `viewDidX` methods.
- You can read `viewDidAppear` as "What should happens right after the view appear".
