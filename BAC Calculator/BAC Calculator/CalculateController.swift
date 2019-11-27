//
//  CalculateController.swift
//  BAC Calculator
//
//  Created by Live the Fourth on 11/25/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import UIKit

class CalculateController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
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
    
    
    // MARK: - User Prompt Outlets
    @IBOutlet var agePicker: UIPickerView!
    var agePickerData : [Int] = [Int]()
    @IBOutlet var enterDrinksButton: UIButton!
    
    
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
