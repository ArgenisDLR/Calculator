//
//  ViewController.swift
//  Calculator
//
//  Created by argenis delarosa on 3/3/20.
//  Copyright © 2020 argenis delarosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var displayLabel: UILabel!
    
    // MARK: - Properties
    private var isFinishedTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label text to a Double")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IB Actions
    @IBAction func calculationButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        if let calculationMethod = sender.currentTitle {
            
            let calculator = CalculatorLogic(number: displayValue)
            
            guard let result = calculator.calculate(symbol: calculationMethod) else {
                fatalError("The result of the calculation is nil")
            }
            displayValue = result
            
        }
            
            
            
        }
        
        @IBAction func numberButtonPressed(_ sender: UIButton) {
            
            if let numberValue = sender.currentTitle {
                
                if isFinishedTypingNumber {
                    displayLabel.text = numberValue
                    isFinishedTypingNumber = false
                } else {
                    
                    if numberValue == "." {
                        
                        guard let currentDisplayLabelValue = Double(displayLabel.text!) else {
                            fatalError("Cannon convert display label text to a Double!")
                        }
                        
                        let isInteger = floor(currentDisplayLabelValue) == currentDisplayLabelValue
                        
                        if !isInteger {
                            return
                        }
                    }
                    
                    displayLabel.text = displayLabel.text! + numberValue
                }
            }
        }
}

