//
//  AddVariablesViewController.swift
//  Wolfram-Omega
//
//  Created by Ayesha Nabiha on 7/16/18.
//  Copyright © 2018 Ayesha Nabiha. All rights reserved.
//

import UIKit

class AddVariablesViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //this set of code makes the add button and the calculate button look nicer
        addButton.layer.cornerRadius = 15
        addButton.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha: 0.25).cgColor
        addButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        addButton.layer.shadowOpacity = 1.0
        addButton.layer.shadowRadius = 0.0
        addButton.layer.masksToBounds = false
        
        calculateButton.layer.cornerRadius = 15
        calculateButton.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha: 0.25).cgColor
        calculateButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        calculateButton.layer.shadowOpacity = 1.0
        calculateButton.layer.shadowRadius = 0.0
        calculateButton.layer.masksToBounds = false
        
    }
    
    //this method should populate the table view with the variable the user entered
    @IBAction func addButtonPressed(_ sender: Any) {
    
    }
    
    //this method should take the user to the next page and display the formulas the user should use based on the variables they gave
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
    }
    
    
    
    
    
    
    
    
    
}
