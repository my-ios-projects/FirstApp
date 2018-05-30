# FirstApp
Some basic iOS concepts. 

### 1 App Delegate:
It a class that listen to the system event; Or system calls some methods of that class if some events happends.
Events like (App Starts, App goes to background, App Terminates, Memory Warnings, ...). So that you can handle the situation like saving data or whatever.

### 2 Will/Did methods:
- `view`: is the screen.
- `Will`: means right before.
- `Did`: means right after.
- So `viewWillX` methods always are called before `viewDidX` methods.
- You can read `viewDidAppear` as "What should happens right after the view appear".
```swift
    /*
     * View: is the screen.
     * Did:  means right after.
     * Load: means loaded into memory.
     
     * General meaning: right after the view is loaded into memory.
     * It is called after the view is loaded into memeory.
    */
     override func viewDidLoad() {
     
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad")   
    } // end viewDidLoad
```

### 3 Outlets and Actions
- `Actions`: sends commands from the view to the code.
    - record action;
- `Outlets`: used to send commands from the code to the view; use to control the view; Every view has an outlet so that you can controll it from the code.
    - disbling recording button.



### 4 Adding images
App images are added to `Assets.xcassets`

<div style="text-align:center"><img src ="image1.jpg" /></div>

Each image's should be in three size x1, x2 and x3. Their name follow that patter name@(2x|3x).png
If their name follows the previous pattern, drag them all to `Assets.xcassets` 
and each image will be added to a separate image set.


### 5 Adding Navigation Controller
`UINavigationController` is a stack handels multiple view. Here, I've connected them by a `segue` with `show` segue.


### 6 Recording Audio
Recoding sound using `AVFoundation`


### 7 Delegation
`AVAudioRecorderDelegate` is used to implement `audioRecorderDidFinishRecording`; which is 
called by `AVAudioRecord` once the recording finishes.


### 8 Sending data to the next view controller
- Added `show` segue between the two view from the storyboard; by shift draging.
- Then, perform segue is called from the code; right after the recoring finishes.
- `prepare` is called before be `performSegue`; so you can instantiate the next view controller and assgin a value to it.



