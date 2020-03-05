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
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IB Actions
    @IBAction func calculationButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert display label text to a Double")
        }
        
        
        
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        if let numberValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numberValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numberValue
            }
            
            
        }
    }
}

