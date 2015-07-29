//
//  ViewController.swift
//  Lesson15_defaults
//
//  Created by Aaron Heckman on 7/22/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet var movieInputField: UITextField!
    @IBAction func addMovieButton(sender: UIButton) {
    }
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



}