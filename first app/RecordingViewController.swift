//
//  RecordingViewController.swift
//  first app
//
//  Created by Taha Magdy on 5/29/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit
import AVFoundation

class RecordingViewController: UIViewController,
                               AVAudioRecorderDelegate // To know once the recording finishes.
{
    
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
        // NOTE: audioRecorder is unwrapped in here.
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
        
        
    } // end recordAudio()
    
    @IBAction func stopRecodring(_ sender: Any) {
        
        print("Stop Recoring is pressed")
        recoding.isEnabled = true
        stopRecording.isEnabled = false
        stateLabel.text = "Tab to Record"
        
        // Stopping the audio and Deactivating the session
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)

    } // stopRecodring
    

    
    // This method is from the AVAudioRecorderDelegate.
    // It is going to be called by AVAudioRecorder right after the recording is finished.
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        
        print("Recording is finished")
        if flag {
            // Perform the segue and send the saved audio path.
            print("3")
            performSegue(withIdentifier: "move", sender: audioRecorder.url)
            print("2")
        }
        else{
            print("Recording have not been successfully saved :(")
        }
        
    } // end audioRecorderDidFinishRecording()
    
    
    
    // * Is called when segue is called before performing the segue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("1")
        // preparing events for the "move" segue.
        if segue.identifier == "move"{
            let nextViewController = segue.destination as! PlayAudioViewController
            let recordingPath = sender as! URL
            nextViewController.audioURL = recordingPath
        } // end "move" segue preparation
        
    } // end prepare()
    
    
/////////
} // end ViewController Class
/////////
