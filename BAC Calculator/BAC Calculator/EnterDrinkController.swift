//
//  EnterDrinkController.swift
//  BAC Calculator
//
//  Created by Drew Mares on 12/4/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import UIKit

class EnterDrinkController: UIViewController {
    var userData: UserInfo!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func printAll(){
        print(userData.name)
        print(userData.bodyWeight)
        print(userData.age)
        print(userData.sex)
    }
    @IBAction func printButton(_ sender: Any) {
        printAll()
    }
    

    
    
    @IBOutlet weak var hoursSpentOutlet: UITextField!
    
    
    @IBAction func hoursSpentButton(_ sender: Any) {
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func unwindToEnterDrinkController(_ unwindSegue: UIStoryboardSegue) {}
}
