//
//  ViewController.swift
//  ActivityViewCustomText
//
//  Created by Lawrence F MacFadyen on 2016-04-09.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

import UIKit

// Function to run code after a delay (credit Matt Neuburg)
func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

class ViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        // Create activity view and then success/hide after 5 seconds
        EZLoadingActivity.show("Posting Updates ...", disableUI: true)
        delay(5.0)
        {
            EZLoadingActivity.hide(success: true, animated: true)
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

