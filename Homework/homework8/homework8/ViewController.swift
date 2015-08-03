//
//  ViewController.swift
//  homework8
//
//  Created by Aaron Heckman on 7/29/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        task1()
        task2()
        
        
    }
    
    func task1() {
        
        Alamofire.request(.GET, "http://www.google.com").response { (request, ResponseSerializer, data, error) -> Void in
            let source = NSString(data: data!, encoding: NSUTF8StringEncoding)
            
        }
    }
    
    func task2() {
        
        Alamofire.request(.GET, "http://www.iundfsdmnsdmcsdov.com")
            .response { (request, response, data, error) -> Void in
            
            if let error = error {
                println("error")
            } else {
                println("no error")
            }
            
            
        }
        
    }
    
}

