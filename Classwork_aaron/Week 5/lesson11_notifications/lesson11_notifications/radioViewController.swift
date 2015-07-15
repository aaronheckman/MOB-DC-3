//
//  radioViewController.swift
//  lesson11_notifications
//
//  Created by Aaron Heckman on 7/8/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class radioViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        
    }

    @IBAction func postAction(sender: UIButton) {
        let notification = NSNotification(name: "Hello World", object: self)
        
        let center  = NSNotificationCenter.defaultCenter()
        center.postNotification(notification)
    }
    }
