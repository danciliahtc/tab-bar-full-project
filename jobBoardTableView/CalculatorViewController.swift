//
//  ViewController.swift
//  Calculator
//
//  Created by Dancilia Harmon   on 12/27/24.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isTypingNumber = false
    private var firstNumber: Double = 0
    private var currentOperation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // when a number button is pressed
    @IBAction func numberPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text)
        if let number = sender.titleLabel?.text { // get's the button's title
            if isTypingNumber {
                displayLabel.text? += number
            } else {
                displayLabel.text = number
                isTypingNumber = true
            }
        } else {
            print("Button doesn't have a title")
        }
    }
    
    //when an operation button is pressed
    @IBAction func operationPressed(_ sender: UIButton) {
        isTypingNumber = false
        
        print("Operation button title: \(sender.currentTitle ?? "No title")")
        if let operation = sender.currentTitle {
            firstNumber = Double(displayLabel.text!) ?? 0
            currentOperation = operation // gets operation symbol (+, -, x, /)
            print("Operation \(currentOperation)")
        } else {
            print("Operation button doesn't have a title")
        }
        
    }
    
    // when the equals button is pressed
    @IBAction func equalsPressed(_ sender: UIButton) {
        isTypingNumber = false
        let secondNumber = Double(displayLabel.text!) ?? 0
        var result: Double = 0
        
        switch currentOperation {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "x":
            result = firstNumber * secondNumber
        case "/":
            if secondNumber == 0 {
                displayLabel.text = "Error"
                return
            } else {
                result = firstNumber / secondNumber
            }
        default:
            break
    }
        print("Result \(result)")
        displayLabel.text = String(result)
    }
        
        //when clear button is pressed
    @IBAction func clearPressed(_ sender: Any) {
        displayLabel.text = "0"
        isTypingNumber = false
        firstNumber = 0
        currentOperation = ""
    }
        
}
