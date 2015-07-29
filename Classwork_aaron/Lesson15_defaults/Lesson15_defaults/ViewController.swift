//
//  ViewController.swift
//  Lesson15_defaults
//
//  Created by Aaron Heckman on 7/22/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    var counterID = "CounterID"
    var counter = 0 {
        didSet {
            label.text = "\(counter)"
            
            defaults.setInteger(counter, forKey: counterID)
            defaults.synchronize()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = defaults.integerForKey(counterID)
    }
    
    
    @IBAction func buttonAction(sender: UIButton) {
        counter++
        }
        
    }
    


