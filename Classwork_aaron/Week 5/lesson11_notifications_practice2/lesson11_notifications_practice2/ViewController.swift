//
//  ViewController.swift
//  lesson11_notifications_practice2
//
//  Created by Aaron Heckman on 7/8/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func makeRed(sender: UIButton) {
        let center = NSNotificationCenter.defaultCenter()
        center.postNotificationName("changeBackgriund", object: nil)
    }

}

