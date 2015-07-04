//
//  File.swift
//  Lesson02
//
//  Created by Aaron Heckman on 7/1/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class FibonacciAdder {
    
    func fibonacciNumber (index: Int) -> Int{
        
        var retval: Int = 0
        for i in 0...index {
            
            if i == 0 {
                retval = 0
            } else if i == 1 {
                retval = 1
            } else {
                retval = fibonacciNumber(i-2) + fibonacciNumber(i-1)
            }
        }
        
        return retval
    }
}