//
//  ViewController.swift
//  ActivityViewCustomText
//
//  Created by Lawrence F MacFadyen on 2016-04-09.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

import UIKit

// Function to run code after a delay (credit Matt Neuburg)
func delay(_ delay:Double, closure:@escaping ()->()) {
    DispatchQueue.main.asyncAfter(
        deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
}

class ViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
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

