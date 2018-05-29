//
//  ViewController.swift
//  first app
//
//  Created by Taha Magdy on 5/29/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

    } // end recordAudio()
    
    @IBAction func stopRecodring(_ sender: Any) {
        
        print("Stop Recoring is pressed")

    } // stopRecodring
    
    
    
/////////
} // end ViewController Class
/////////
