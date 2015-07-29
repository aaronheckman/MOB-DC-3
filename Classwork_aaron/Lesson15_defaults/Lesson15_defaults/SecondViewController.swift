//
//  SecondViewController.swift
//  Lesson15_defaults
//
//  Created by Aaron Heckman on 7/22/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    

    }

    @IBAction func printPath(sender: UIButton) {
        let path = NSBundle.mainBundle().pathForResource("Students", ofType: "plist")
        
        if let path = path {
            let students = NSArray(contentsOfFile: path)
    println(students)


    }

    }}
