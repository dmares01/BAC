//
//  CalculateController.swift
//  BAC Calculator
//
//  Created by Live the Fourth on 11/25/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import UIKit

class CalculateController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return agePickerData.count;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(agePickerData[row])
    }
    

    override func viewDidLoad() {
        super.viewDidLoad();
        selectLoadingScreen();
        agePicker.dataSource = self;
        agePicker.delegate = self;
        self.weightField.delegate = self
   
    }
    
    
    //put logic here to determine which screen to load when user opens app.
    var storedData : Bool = false
    func selectLoadingScreen(){
        
        if !storedData{
            //run set up screen and prompt for user data
            promptUserData();
        }
        else{
            //load select user screen
            loadUserDataScreen();
        }
    }
    func promptUserData(){
        //hide ui elements as necessary
        print("Prompted for user data")
        enterDrinksButton.layer.cornerRadius = 20;
        enterDrinksButton.frame = CGRect(x: 100, y: 100, width: 60, height: 20);
        
        agePickerData = []
        for i in 21...100{
            agePickerData.append(i)
        }
        storedData = true;
    }
    func loadUserDataScreen(){
        //hide ui elements as necessary
        print("Did not prompt for user data")
    }
    //Figure out how to get height data.
    //Two boxes for feet and inches vs one box for centimeters
    //or one box for both
    
    fileprivate func validate(_ textField: UITextField) ->(Bool, String?){
        guard let text = textField.text else {
            return (false, nil)
        }
        if text.count >= 2{
            return(true, "Please make sure to select pounds or kilograms")
        }
        else if text.count == 1{
            return(false, "Are you sure you can legally drink?")
        }
        else{
            return(false, "This field can not be empty")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    // MARK: - User Prompt Outlets
    //Picker outlets
    @IBOutlet var agePicker: UIPickerView!
    var agePickerData : [Int] = [Int]()
    var inputtedUserData = UserInfo(name: " ", bodyWeight: 0.0, sex: 0, age: 0.0)
    
    
    
    //enter button
    @IBOutlet var enterDrinksButton: UIButton!
    @IBAction func userInfoEntered(_ sender: UIButton) {
        //need prompt to save user data in memory
        inputtedUserData.name = " "
        inputtedUserData.bodyWeight = Double(weightField.text!)!
        inputtedUserData.sex = genderSelector.selectedSegmentIndex
        // male = 0; female = 1; other = 2
        inputtedUserData.age = (Double(agePicker.selectedRow(inComponent: 0))+21)
        performSegue(withIdentifier: "drinkSegue", sender: nil)
    }
    
    
    
    //weight outlets
    @IBOutlet var weightField: UITextField!
    @IBOutlet var unitsSelector: UISegmentedControl!
    @IBOutlet var weightErrorMessage: UILabel!
    //change action to add user button right away
    @IBAction func validateWeightInfo(_ sender: Any) {
        let (valid, message) = validate(weightField)
        if valid {
            enterDrinksButton.isHidden = false;
            weightErrorMessage.isHidden = true;
        }
        else{
            weightErrorMessage.isHidden = false;
            weightErrorMessage.text = message;
            enterDrinksButton.isHidden = true;
        }
    }
    
    //gender selector
    @IBOutlet var genderSelector: UISegmentedControl!
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "drinkSegue"{
            let enterDrinkController = segue.destination as! EnterDrinkController
            enterDrinkController.userData = inputtedUserData
        }
    }
    
}