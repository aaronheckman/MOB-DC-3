//
//  AddViewController.swift
//  Delegation
//
//  Created by Thomas Degry on 6/30/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

protocol addStudentDelegate{
    func addStudent(name: String)
}

class AddViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!

    var delegate: addStudentDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Little hack
        // Add a tap gesture to the screen
        // In the screenTapped method, end editing on the view and the keyboard will disappear
        let tapGesture = UITapGestureRecognizer(target: self, action: "screenTapped")
        self.view.addGestureRecognizer(tapGesture)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Try commenting this line out and dismissing the add modal when the keyboard is present
        // It will only disappear if the modal is gone completely
        // This resignFirstResponder on the textfield makes sure the editign is done too
        nameField.resignFirstResponder()
    }
    
    func screenTapped() {
        view.endEditing(true)
    }
    
    @IBAction func save(sender: UIButton) {
        delegate?.addStudent(nameField.text)
        dismiss()
    }
    
    @IBAction func cancel(sender: UIButton) {
        dismiss()
    }
    
    func dismiss() {
        // The users decided to go back, dismiss this modal
        dismissViewControllerAnimated(true, completion: nil)
    }

}
