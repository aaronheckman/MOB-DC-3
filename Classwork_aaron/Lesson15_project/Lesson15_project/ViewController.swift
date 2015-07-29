//
//  ViewController.swift
//  Lesson15_project
//
//  Created by Aaron Heckman on 7/22/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaults = NSUserDefaults.standardUserDefaults()
    var movieArray = [String]()
    let movieKey = "movie"
    
    @IBOutlet weak var movieInputField: UITextField!
    
    @IBAction func addMovieButton(sender: UIButton) {
        if let text = movieInputField.text {
        movieArray.append(text)
        defaults.setObject(movieArray, forKey: movieKey)
        movieInputField.text = ""
        }}
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



}

