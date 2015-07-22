//
//  ViewController.swift
//  calculator_2
//
//  Created by Aaron Heckman on 7/19/15.
//  Copyright (c) 2015 aheckman. All rights reserved.
//

import UIKit

enum CalculatorStatus{
    case Empty
    case Adding
    case Subtracting
    case Multiplying
    case Dividing
}

class ViewController: UIViewController {
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var returnButton: UIButton!
    @IBOutlet weak var knightButton: UIButton!
    
    var userAlreadyTyping: Bool = false
    var blueColorStatus: Bool = true
    var status = CalculatorStatus.Empty
    var number1: String?
    var number2: String?
    var decimalStatus = false
    
    func add(number1: Double, number2: Double) {
        var sum: Double = number1+number2
        if sum%1 == 0 {
            label.text = "\(Int(sum))"
        } else {
            label.text = "\(sum)"
        }
    }
    
    func multiply(number1: Double, number2: Double) {
        var sum: Double = number1*number2
        if sum%1 == 0 {
            label.text = "\(Int(sum))"
        } else {
            label.text = "\(sum)"
        }
    }
    
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!

        if userAlreadyTyping && label.text != "0"{
            label.text = label.text! + digit
        }
        else {
            label.text = digit
            userAlreadyTyping = true
        }
    }
    
    @IBAction func clearAll(sender: UIButton) {
        label.text = "0"
        userAlreadyTyping = false
    }
    
    @IBAction func createPercentage(sender: UIButton) {
        var input = (label.text! as NSString).doubleValue
        multiply(input, number2: 1/100)
        userAlreadyTyping = false
    }
    
    
    @IBAction func changeColors(sender: UIButton) {
        if blueColorStatus == true {
            addButton.backgroundColor = UIColor.orangeColor()
            multiplyButton.backgroundColor = UIColor.orangeColor()
            subtractButton.backgroundColor = UIColor.orangeColor()
            returnButton.backgroundColor = UIColor.orangeColor()
            divideButton.backgroundColor = UIColor.orangeColor()
            knightButton.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)
            blueColorStatus = false
        } else {
            addButton.backgroundColor = UIColor.magentaColor()
            multiplyButton.backgroundColor = UIColor.magentaColor()
            subtractButton.backgroundColor = UIColor.magentaColor()
            returnButton.backgroundColor = UIColor.magentaColor()
            divideButton.backgroundColor = UIColor.magentaColor()
            knightButton.setTitleColor(UIColor.magentaColor(), forState: UIControlState.Normal)
            blueColorStatus = true
        }
    }
    
    @IBAction func makeNegative(sender: UIButton) {
        var input = (label.text! as NSString).doubleValue
        var finalNegative = -1*input
        if finalNegative%1 == 0 {
            label.text = "\(Int(finalNegative))"
        } else {
            label.text = "\(finalNegative)"
        }
    }
    
    
    
    @IBAction func addNumber(sender: UIButton) {
        number1 = label.text!
        status = .Adding
        decimalStatus = true
        userAlreadyTyping = false}
    
    @IBAction func multiplyNumber(sender: UIButton) {
        number1 = label.text!
        status = .Multiplying
        decimalStatus = true
        userAlreadyTyping = false}
    
    @IBAction func divideNumber(sender: UIButton) {
        number1 = label.text!
        status = .Dividing
        decimalStatus = true
        userAlreadyTyping = false}
    
    @IBAction func subtractNumber(sender: UIButton) {
        number1 = label.text!
        status = .Subtracting
        decimalStatus = true
        userAlreadyTyping = false}
    
    
    @IBAction func returnValue(sender: UIButton) {
        switch status{
        case .Adding:
             number2 = label.text
            if let number1 = number1 {
                add((number1 as NSString).doubleValue, number2: (number2! as NSString).doubleValue)
                status = .Empty
            }
        case .Multiplying:
            number2 = label.text!
            if let number1 = number1 {
                multiply((number1 as NSString).doubleValue, number2: (number2! as NSString).doubleValue)
                status = .Empty
            }
        case .Dividing:
            number2 = label.text!
            if let number1 = number1 {
                multiply((number1 as NSString).doubleValue, number2: 1/(number2! as NSString).doubleValue)
                status = .Empty
            }
        case .Subtracting:
            number2 = label.text!
            if let number1 = number1 {
                add((number1 as NSString).doubleValue, number2: -1*(number2! as NSString).doubleValue)
                status = .Empty
            }
        default:
            break
        }
        userAlreadyTyping = false
    }
    
            @IBAction func addDecimal(sender: UIButton) {
                let digit = sender.currentTitle!
                let input = label.text!
                if decimalStatus{
                    label.text = "0" + digit
                    userAlreadyTyping = true
                    decimalStatus = false
                }
                else if userAlreadyTyping && input.rangeOfString(".") == nil{
                    label.text = label.text! + digit
                }
            }
    
}