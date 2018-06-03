//
//  PlayAudioViewController.swift
//  first app
//
//  Created by Taha Magdy on 5/30/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit
import AVFoundation

class PlayAudioViewController: UIViewController {
    
    
    // To recieve the audio path from the previous view.
    var audioURL: URL!
    
    // MARK: Outlets
    
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL:URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("URL is passed: \(audioURL)")

        // Do any additional setup after loading the view.
    }

    
    
    // Action for the six buttons
    @IBAction func playSoundButtons(){
        print("play sound")
        
    } // end playSoundButtons()
    
    
    @IBAction func stopSoundButton(){
        print("stop sound")
        
    } // end stopSoundButton()
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
