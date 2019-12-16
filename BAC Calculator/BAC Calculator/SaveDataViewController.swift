//
//  SaveDataViewController.swift
//  BAC Calculator
//
//  Created by Live the Fourth on 12/6/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import UIKit

class SaveDataViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.saveDataEnterName.delegate = self;

        // Do any additional setup after loading the view.
    }
    //MARK: Prompt to save data
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBOutlet var saveDataEnterName: UITextField!
    @IBAction func saveDataEnterNameSubmit(_ sender: UITextField) {
        performSegue(withIdentifier: "exitUserDataSegue", sender: nil)
    }
    @IBAction func saveDataYesButton(_ sender: Any) {
        saveDataEnterName.isHidden = false
        saveDataNoButtonTitle.setTitle("Cancel", for: .normal)
        
        
       }
    @IBOutlet var saveDataNoButtonTitle: UIButton!
    @IBAction func saveDataNoButton(_ sender: Any) {
        performSegue(withIdentifier: "exitUserDataSegue", sender: nil)
       }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "exitUserDataSegue"{
            let enterDrinkController = segue.destination as! EnterDrinkController
            if saveDataEnterName.text == nil || saveDataEnterName.text == ""{
                enterDrinkController.userData.name = "User"
            }
            else{
                enterDrinkController.userData.name = saveDataEnterName.text!
            }
            
        }
        /*
         at end of session
         if userInfo.name == "User"
            clear data
         */
    }
    

}
