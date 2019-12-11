//
//  EnterDrinkController.swift
//  BAC Calculator
//
//  Created by Drew Mares on 12/4/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import UIKit

class EnterDrinkController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinks.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "drinkCell")
        let defaultCell = tableView.dequeueReusableCell(withIdentifier: "drinkCell")
        let drinkName = drinks[indexPath.row]
        cell?.textLabel?.text = drinkName.name
        
        defaultCell?.textLabel!.text = "Value not Loaded"
        return cell ?? defaultCell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let drinkSelected = drinks[indexPath.row]
        //print(drinkSelected.name)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //MARK: - View Did Load
    var userData: UserInfo!
    override func viewDidLoad() {
        super.viewDidLoad()
        drinkTableView.dataSource = self
        drinkTableView.delegate = self
        self.hoursSpentOutlet.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    //print button to test user data being passed through
    func printAll(){
        print(userData.name)
        print(userData.bodyWeight)
        print(userData.age)
        print(userData.sex)
    }
    @IBAction func printButton(_ sender: Any) {
        printAll()
    }
    

    @IBOutlet var drinkTableView: UITableView!
    
    
    @IBOutlet weak var hoursSpentOutlet: UITextField!
    @IBOutlet var calculateBACButtonOutlet: UIButton!
    @IBAction func calculateBACButton(_ sender: UIButton) {
        
        //need to verify hours have been entered
        performSegue(withIdentifier: "calculateBACSegue", sender: nil)
    }
    @IBOutlet var errorMessage: UILabel!
    
    fileprivate func validate(_ textField: UITextField) ->(Bool, String?){
        guard let text = textField.text else {
            return (false, nil)
        }
        if text.count >= 1{
            return(true, "Please make sure to select pounds or kilograms")
        }
//        else if text.count == 0{
//            return(false, "Please enter the number of hours drinking")
//        }
        else{
            return(false, "This field can not be empty")
        }
    }
    
    @IBAction func hoursSpentButton(_ sender: Any) {
        //verify number entered
        //releaseFirstResponder
        let (valid, message) = validate(hoursSpentOutlet)
        if valid {
            calculateBACButtonOutlet.isHidden = false;
            errorMessage.isHidden = true;
        }
        else{
            calculateBACButtonOutlet.isHidden = true;
            errorMessage.isHidden = false;
            errorMessage.text = message;
        }
        
        
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "calculateBACSegue"{
        let showBACController = segue.destination as! ShowBACController
            showBACController.finalUserData = userData
            showBACController.currentSession.drinkingTime = Double(hoursSpentOutlet.text!)!;
            let drinkIndex = drinkTableView.indexPathForSelectedRow
            let drinkCellSelected = drinks[(drinkIndex?.row)!]
            showBACController.enteredDrinks.append(drinkCellSelected)
        }
    }
    
    @IBAction func unwindToEnterDrinkController(_ unwindSegue: UIStoryboardSegue) {}
}
