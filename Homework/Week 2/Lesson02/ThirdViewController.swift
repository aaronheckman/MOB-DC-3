//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!

    @IBAction func buttonAction(sender: UIButton) {
        if let number = textField.text.toInt(){
            if number%2 == 0 {
                label.text = "Even"
            } else {
                label.text = "Odd"
            }
        }
    }
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
    
    

*/
}
