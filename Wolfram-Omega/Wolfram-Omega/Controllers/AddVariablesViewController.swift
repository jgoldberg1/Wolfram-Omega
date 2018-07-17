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
    
    // array of variables user has entered
    var variables = [String]()
    
    // array holding the currently accepted input words
    var listOfAcceptedWords = ["acceleration", "energy", "force", "frequency", "height", "rotational inertia", "kinetic energy", "spring constant", "length", "angular momentum", "mass", "power", "momentum", "radius or distance", "period", "time", "potential energy", "velocity", "speed", "work done on a system", "position", "coefficient of friction", "angle", "torque", "angular speed", "angular acceleration", "phase angle", "velocity_0", "velocity"]
    
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
    
    //dictionary that associates the string equivalent of the function with the image that is going to be displayed to the user
   /* var formulasDictionary = ["velocity(final)=velocity(initial)+acceleration*time": #imageLiteral(resourceName: "find_velocity_with_time_and_accel"), "position=position(initial)+velocity(initial)*time+(1/2)acceleration*time^2": #imageLiteral(resourceName: "find_position"), "velocity(final)^2=velocity(initial)^2acceleration(position(final)-position(initial))": #imageLiteral(resourceName: "find_vel_w_accel_and_disp"), "acceleration=force/mass": #imageLiteral(resourceName: "accel_w_force_mass"), "force=position/time": ,
        "impulse=force*time=momentum",
        "momentum=mass*velocity": #imageLiteral(resourceName: "momentum w mass and vel"),
        "force=coefficient of friction*force",
        "energy=work=Force*radius",
        "energy=work=Force*distance",
        "kinetic energy=(1/2)mass*velocity^2": #imageLiteral(resourceName: "kinetic energy w mass and vel"),
        "power=Energy/time",
        "power=force*velocity": #imageLiteral(resourceName: "power w force and vel"),
        "potential energy=mass*gravity*height": #imageLiteral(resourceName: "potential energy of grav") ]*/
    
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
<<<<<<< HEAD
        if let currentText = variableTextField.text{
            if listOfAcceptedWords.contains(currentText){
                //addNewVariable(userText: currentText)
<<<<<<< HEAD
>>>>>>> fb93ac120b7d666dfd4c601b799203e6248c68a4
                variables.append(currentText)
                
            }
            else{ //if they mispelled the variable
                let alert = UIAlertController(title: "Mispelled Variable Name", message: "Could not find an existing variable. Try typing the name again.", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    switch action.style{
                    case .default:
                        print("default")
                    case .cancel:
                        print("cancel")
                    case .destructive:
                        print("destructive")
                    }}))
                self.present(alert, animated: true, completion: nil)
=======
>>>>>>> physics-symbols-functionality
            }
        }
        
        
        
    }
    
    //this method should take the user to the next page and display the formulas the user should use based on the variables they gave
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
    }
    
<<<<<<< HEAD

    // function for adding variables to the tableview
    
   /* func addNewVariable(userText: String) {
        let indexPath = IndexPath(row: variables.count-1, section: 0)
        let cell = tableView.dequeueReusableCell(withIdentifier: "VariableCellView", for: indexPath) as! VariableCellView
        cell.variableName.text = userText
        tableView.reloadData()
    }*/
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return variables.count
//    }
//
//    override func tableView(_ tableView: UITableViewCell, cellForRowAt: IndexPath) -> UITableViewCell {
//        let cell = tableView.deq
//    }
=======
    
    
>>>>>>> physics-symbols-functionality
    
    
    
    
    
    
<<<<<<< HEAD
    

=======
>>>>>>> physics-symbols-functionality
}

