//
//  FirstTableViewController.swift
//  tableview_practice_2
//
//  Created by Aaron Heckman on 7/1/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    let cellID = "reuseIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableView.self, forHeaderFooterViewReuseIdentifier: cellID)
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return cell
    }
}
