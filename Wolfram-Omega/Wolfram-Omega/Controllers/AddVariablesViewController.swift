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
    var variables = [String]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    // array holding the currently accepted input words
      var listOfAcceptedWordsSymbolic = ["a", "E", "F", "f", "h", "I", "J", "K", "k", "l", "L", "m", "P", "p", "r", "T", "t", "U", "v", "W", "x", "mu", "theta", "tau", "omega", "alpha", "phi", "initial velocity"]
    
    var formulaList = ["velocity=velocity_0+acceleration_x*time",
        "position=position_0+velocity_x0*time+(1/2)acceleration_x*time^2",
        "velocity^2=velocity_0^2acceleration(position-position_0)",
        "acceleration=force/mass",
        "force=position/time",
        "impulse=force*time=momentum",
        "momentum=mass*velocity",
        "force_f=coefficient of friction*force_n",
        "energy=work=Force*radius",
        "energy=work=Force*distance",
        "kinetic energy=(1/2)mass*velocity^2",
        "power=Energy/time",
        "power=force*velocity",
        "potential energy=mass*gravity*height",
        "Angular acceleration=sigma(torque)/rotational inertia",
        "Angular acceleration=torque_net/rotational inertia",
        "Rotational inertia=integral(radius^2*mass)",
        "Rotational inertia=integral(distance^2*mass)",
        "Rotational inertia-sigma(mass*radius^2)",
        "Rotational inertia-sigma(mass*distance^2)",
        "Position_cm = sigma(mass_i * position_i)/sigma(mass_i)",
        "Velocity = radius * angular speed",
        "Angular momentum = radius*momentum",
        "Angular momentum = rotational inertia*angular speed",
        "Kinetic energy=1/2*rotational inertia*angular speed^2",
        "Angular speed = angular speed_0 + angular acceleration*time",
        "potential energy=-(mass1)(mass2)/radius",
        "force=(m1)(m2)/radius^2",
        "force=(m1)(m2)/distance^2",
        "period=2root(length/gravity)",
        "period=2root(mass/spring constant)",
        "period=2/angular speed=1/frequency",
        "position=position_maxcos(angular speed*time+phase angle)",
        "potential energy=(1/2)spring constant*position^2",
        "force=-spring constant*position",
        "angle=angle_0+angular speed_0*time+(1/2)angular acceleration*time^2"
]
    var listOfAcceptedWordsWrittenOut = ["acceleration", "energy", "force", "frequency", "height", "rotational inertia", "kinetic energy", "spring constant", "length", "angular momentum", "mass", "power", "momentum", "radius", "distance", "period", "time", "potential energy", "velocity", "speed", "work done on a system", "position", "coefficient of friction", "angle", "torque", "angular speed", "angular acceleration", "phase angle", "velocity_0", "velocity"]
    
    //dictionary that associates the string equivalent of the function with the image that is going to be displayed to the user
    /*var formulasDictionary = ["velocity(final)=velocity(initial)+acceleration*time": #imageLiteral(resourceName: "find_velocity_with_time_and_accel"), "position=position(initial)+velocity(initial)*time+(1/2)acceleration*time^2": #imageLiteral(resourceName: "find_position"), "velocity(final)^2=velocity(initial)^2acceleration(position(final)-position(initial))": #imageLiteral(resourceName: "find_vel_w_accel_and_disp"), "acceleration=force/mass": #imageLiteral(resourceName: "accel_w_force_mass"), "force=position/time": ,
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
        
        tableView.delegate = self
        tableView.dataSource = self
        
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
/*    @IBAction func addButtonPressed(_ sender: Any) {
        if var currentText = variableTextField.text{
            if listOfAcceptedWordsSymbolic.contains(currentText) {
                let writtenOutArrayIndex = listOfAcceptedWordsSymbolic.index(of: currentText)
                print(writtenOutArrayIndex as Any)
                currentText = listOfAcceptedWordsWrittenOut[writtenOutArrayIndex!]
                // add the variable to the prototype cells
                //variableTextField.text = "it works, placeholder text"
     variables.append(currentText)
     print(variables)
     variableTextField.text = ""
            } else if listOfAcceptedWordsWrittenOut.contains(currentText) {
     variables.append(currentText)
     print(variables)
     variableTextField.text = ""
                
            } else { //if they mispelled the variable
                    let alert = UIAlertController(title: "Mispelled Variable Name", message: "Could not find an existing physcis variable. Try typing the variable name again.", preferredStyle: UIAlertControllerStyle.alert)
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
                }
            }
            }
        }
 
 
 */

    //this method should populate the table view with the variable the user entered
    @IBAction func addButtonPressed(_ sender: Any) {
            if var currentText = variableTextField.text {
                if listOfAcceptedWordsSymbolic.contains(currentText) {
                    let writtenOutArrayIndex = listOfAcceptedWordsSymbolic.index(of: currentText)
                    currentText = listOfAcceptedWordsWrittenOut[writtenOutArrayIndex!]
                    variables.append(currentText)
                    print(variables)
                    variableTextField.text = ""
                // call the new function here
                //addNewVariable()
                } else if listOfAcceptedWordsWrittenOut.contains(currentText) {
                    variables.append(currentText)
                    print(variables)
                    variableTextField.text = ""
            } else { //if they mispelled the variable
                let alert = UIAlertController(title: "Mispelled Variable Name", message: "Could not find an existing physcis variable. Try typing the variable name again.", preferredStyle: UIAlertControllerStyle.alert)
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
            }
        }
    }
    
        

    
    //this method should take the user to the next page and display the formulas the user should use based on the variables they gave
    @IBAction func calculateButtonPressed(_ sender: Any) {
        var tempCounter=0
        // get the formula
        for word in formulaList{
            // get a variable from the list of variables
            for name in variables{
                // check if the formula has the variable
                if word.contains(name){
                    // increment the number of times the variables showed up in the formula
                    tempCounter = tempCounter+1
                }
            }
            // if the formula has all of the varibles, print it
            if tempCounter == variables.count {
                print(word)
            }
            tempCounter=0
        }

    }
    
    
    
    func addNewVariable() {
        print("hello")
        let indexPath = IndexPath(row: variables.count-1, section: 0)
        //tableView.beginUpdates()
        print ("destroyed here")
        tableView.insertRows(at: [indexPath], with: .automatic)
        print("hi")
        // destoryed on the line below
        tableView.reloadData()
        tableView.dequeueReusableCell(withIdentifier: "Variable", for: indexPath)
    }
    
    //    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        return variables.count
    //    }
    //
    //    override func tableView(_ tableView: UITableViewCell, cellForRowAt: IndexPath) -> UITableViewCell {
    //        let cell = tableView.deq
    //    }
    
    
    



    
}



extension AddVariablesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "variableCell", for: indexPath) as! VariableTableViewCell
        print(variables.count)
        
        
        let variable = variables[indexPath.row]
        //display a cell with the variable that the user typed after they click add
        cell.variableLabel.text = variable
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return variables.count
    }
    
    
    
}
