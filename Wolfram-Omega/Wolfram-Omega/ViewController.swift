//
//  ViewController.swift
//  Wolfram-Omega
//
//  Created by Ayesha Nabiha on 7/16/18.
//  Copyright © 2018 Ayesha Nabiha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // array of accepted words
    var listOfAcceptedWords = ["acceleration", "energy", "force", "frequency", "height", "rotational inertia", "kinetic energy", "spring constant", "length", "angular momentum", "mass", "power", "momentum", "radius or distance", "period", "time", "potential energy", "velocity", "speed", "work done on a system", "position", "coefficient of friction", "angle", "torque", "angular speed", "angular acceleration", "phase angle", "velocity_0", "velocity"]
    
    @IBOutlet weak var continueButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.layer.cornerRadius = 15
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func checkIfValid(variable: String) {
        if !listOfAcceptedWords.contains(variable){
            print("You mispelled \(variable). Please re-enter it :)")
        }
    }
    
    @IBAction func addButton(_ sender: Any) {
        
    }
    
}

