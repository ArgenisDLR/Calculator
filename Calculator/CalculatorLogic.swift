//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by argenis delarosa on 3/5/20.
//  Copyright © 2020 argenis delarosa. All rights reserved.
//

import UIKit

class CalculatorLogic {
    
    
    
    
    func calculatorLogic() {
       
        if let calculationMethod = sender.currentTitle {
            if calculationMethod == "+/-" {
                displayValue *= -1
            } else if calculationMethod == "AC" {
                displayLabel.text = "0"
            } else if calculationMethod == "%" {
                displayValue *= 0.01
            }
        }
    }
    
}
