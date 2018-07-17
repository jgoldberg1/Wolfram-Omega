//
//  ViewController.swift
//  Wolfram-Omega
//
//  Created by Ayesha Nabiha on 7/16/18.
//  Copyright © 2018 Ayesha Nabiha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var continueButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //this set of code makes the continue button look nicer
        continueButton.layer.cornerRadius = 15
        continueButton.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha: 0.25).cgColor
        continueButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        continueButton.layer.shadowOpacity = 1.0
        continueButton.layer.shadowRadius = 0.0
        continueButton.layer.masksToBounds = false
    
    }

}

