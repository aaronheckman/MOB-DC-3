//
//  ViewController.swift
//  calc_practice
//
//  Created by Aaron Heckman on 7/6/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var answerField: UILabel!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var zero: UIButton!
    
    @IBAction func clearAction(sender: UIButton) {
        answerField.text = ""
    }
    
    @IBAction func oneAction(sender: UIButton) {
        answerField.text! + "1"
    }

    func addit(){
    answerField.text = "Hello World"
    }
    
    addit()
}

