//
//  ViewController.swift
//  AIM
//
//  Created by Aaron Heckman on 6/22/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        setupTextFields()
    }
    
    func formatTextField (textField: UITextField){
        textField.keyboardType = textField == ageField ? .NumberPad : .ASCIICapable
        textField.textColor = textField == sexField ? UIColor.redColor() : UIColor.blackColor()
        textField.font = UIFont.systemFontOfSize(18)
    }
    
    func setupTextFields() {
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
        formatTextField(nameField)
        formatTextField(ageField)
        formatTextField(sexField)
        formatTextField(locationField)
    }
    
    func setupButtons() {
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)

    }
    
    
    @IBAction func submitAction(sender: UIButton) {

    }
    
    @IBAction func clearForm(sender: UIButton) {
        nameField.text = ""
        ageField.text = ""
        sexField.text = ""
        locationField.text = ""
        }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("Prepare for Segue")
        if segue.identifier == "showProfile"{
        let destinationVC = segue.destinationViewController as! ProfileViewController
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.sex = sexField.text
            destinationVC.location = locationField.text
    }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

