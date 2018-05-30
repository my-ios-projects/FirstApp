//
//  RecordingViewController.swift
//  first app
//
//  Created by Taha Magdy on 5/29/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit
import AVFoundation

class RecordingViewController: UIViewController {
    
    // Recording class
    var audioRecorder: AVAudioRecorder!

    // Outlets
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var recoding: UIButton!
    @IBOutlet weak var stopRecording: UIButton!
    
    
    // view: is the screen
    
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
        stopRecording.isEnabled = false
        
    } // end viewDidLoad
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }




    @IBAction func recordAudio(_ sender: Any) {
       
        print("Record Button is pressed")
        stateLabel.text = "Recording ..."
        
        recoding.isEnabled = false
        stopRecording.isEnabled = true
        
        
        // Get the document directory
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,
                                                          .userDomainMask, true)[0] as String
        // Audio file name and combining path and file name onto one path.
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
        // Getting the audio shared instance
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord,
                                 with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        // Giving the output path to the audioRecorder object and record
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
        
        
    } // end recordAudio()
    
    @IBAction func stopRecodring(_ sender: Any) {
        
        print("Stop Recoring is pressed")
        recoding.isEnabled = true
        stopRecording.isEnabled = false
        stateLabel.text = "Tab to Record"

    } // stopRecodring
    

    
    
    
/////////
} // end ViewController Class
/////////
