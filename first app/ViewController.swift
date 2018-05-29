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
    
    
    // view: is the screen
    
    /*
     * View: is the screen.
     * Did:  means right after.
     * Load: means loaded into memory.
     
     * General meaning: right after the view is loaded into memory.
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad")
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
    } // end recordAudio()
    
    @IBAction func stopRecodring(_ sender: Any) {
        
        print("Stop Recoring is pressed")

    } // stopRecodring
    
    
    
/////////
} // end ViewController Class
/////////
