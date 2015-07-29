//
//  SecondViewController.swift
//  Lesson15_project
//
//  Created by Aaron Heckman on 7/22/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var array = [String]()
    let cellID = "cellID"
    @IBOutlet weak var musicTableview: UITableView!
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        
        cell.textLabel?.text = array[indexPath.row]
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicTableview.delegate = self
        musicTableview.dataSource = self
        musicTableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        array = defaults.objectForKey("movie") as! [String]
        

    }
    
    

    

    



}
