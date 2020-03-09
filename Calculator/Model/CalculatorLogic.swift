//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by argenis delarosa on 3/5/20.
//  Copyright © 2020 argenis delarosa. All rights reserved.
//

import UIKit

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (number1: Double, calculationMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n * 0.01
            case "=":
                return performTwoNumberCalculation(number2: n)
            default:
                intermediateCalculation = (number1: n, calculationMethod: symbol)
            }
        }
        return nil
        
    }
    
    func performTwoNumberCalculation(number2: Double) -> Double? {
        
        if let number1 = intermediateCalculation?.number1,
            let operation = intermediateCalculation?.calculationMethod {
            
  
            switch operation {
            case "+":
                return number1 + number2
            case "-":
                return number1 - number2
            case "×":
                return number1 * number2
            case "÷":
                return number1 / number2
            default:
                fatalError("The operation passed in does not match any of the cases.")
            }
        }
        return nil
    }
    
}
