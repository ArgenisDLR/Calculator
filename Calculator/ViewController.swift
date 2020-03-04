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
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IB Actions
    @IBAction func calculationButtonPressed(_ sender: UIButton) {
        
        // what should happen when the calculation button is pressed
    }
    
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        // what should happen whent the number is pressed
        
        print(sender)
    }
    

}

