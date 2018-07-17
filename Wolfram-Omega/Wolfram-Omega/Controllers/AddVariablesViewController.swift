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
    @IBOutlet weak var variableTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    // array holding the currently accepted input words
    var listOfAcceptedWordsSymbolic = ["a", "E", "F", "f", "h", "I", "J", "K", "k", "l", "L", "m", "P", "p", "r", "T", "t", "U", "v", "W", "x", "mu", "theta", "tau", "omega", "alpha", "phi", "initial velocity"]
    
    var listOfAcceptedWordsWrittenOut = ["acceleration", "energy", "force", "frequency", "height", "rotational inertia","impulse", "kinetic energy", "spring constant", "length", "angular momentum", "mass", "power", "momentum", "radius or distance", "period", "time", "potential energy", "velocity", "speed", "work done on a system", "position", "coefficient of friction", "angle", "torque", "angular speed", "angular acceleration", "phase angle", "velocity_0", ]
    
    // array holding the formualas
    var formulaList = ["velocity(final)=velocity(initial)+acceleration*time",
                       "position=position(initial)+velocity(initial)*time+(1/2)acceleration*time^2",
                       "velocity(final)^2=velocity(initial)^2acceleration(position(final)-position(initial))",
                       "acceleration=force/mass",
                       "force=position/time",
                       "impulse=force*time=momentum",
                       "momentum=mass*velocity",
                       "force=coefficient of friction*force",
                       "energy=work=Force*radius",
                       "energy=work=Force*distance",
                       "kinetic energy=(1/2)mass*velocity^2",
                       "power=Energy/time",
                       "power=force*velocity",
                       "potential energy=mass*gravity*height"]
    
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
        if var currentText = variableTextField.text{
            if listOfAcceptedWordsSymbolic.contains(currentText) {
                let writtenOutArrayIndex = listOfAcceptedWordsSymbolic.index(of: currentText)
                print(writtenOutArrayIndex as Any)
                currentText = listOfAcceptedWordsWrittenOut[writtenOutArrayIndex!]
                // add the variable to the prototype cells
                //variableTextField.text = "it works, placeholder text"
                print("Accepted variable")
                //at this point, currentText is ready to be printed into a prototype cell
                print(currentText)
                
            } else if listOfAcceptedWordsWrittenOut.contains(currentText) {
                print(currentText)
                
            } else {
                print("Mispelled \(currentText), please re-enter the variable")
                variableTextField.text = ""
            }
        }
        
        
        
    }
    
    //this method should take the user to the next page and display the formulas the user should use based on the variables they gave
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
    }
    
    
    
    
    
    
    
    
    
}

