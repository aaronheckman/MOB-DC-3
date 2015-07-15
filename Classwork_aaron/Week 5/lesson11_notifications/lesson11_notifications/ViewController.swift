//
//  ViewController.swift
//  lesson11_notifications
//
//  Created by Aaron Heckman on 7/8/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let center = NSNotificationCenter.defaultCenter()
        center.addObserver(self, selector: "receiver:", name: "Hello World", object: nil)
    }
    
    func receiver(notification: NSNotification) {
        println("Notificaiton received")
    }

}

