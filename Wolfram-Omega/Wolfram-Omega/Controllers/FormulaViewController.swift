//
//  FormulaViewController.swift
//  Wolfram-Omega
//
//  Created by Ayesha Nabiha on 7/17/18.
//  Copyright © 2018 Ayesha Nabiha. All rights reserved.
//

import UIKit

class FormulaViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //this set of code makes the back button look nicer
        backButton.layer.cornerRadius = 15
        backButton.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha: 0.25).cgColor
        backButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        backButton.layer.shadowOpacity = 1.0
        backButton.layer.shadowRadius = 0.0
        backButton.layer.masksToBounds = false
        
        backButton.layer.cornerRadius = 15
        backButton.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha: 0.25).cgColor
        backButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        backButton.layer.shadowOpacity = 1.0
        backButton.layer.shadowRadius = 0.0
        backButton.layer.masksToBounds = false
        
    }
    
    @IBAction func dismissFormulaView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}


    

