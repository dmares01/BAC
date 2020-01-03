//
//  ShowBACController.swift
//  BAC Calculator
//
//  Created by Live the Fourth on 12/6/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import UIKit

class ShowBACController: UIViewController {
    var currentSession = SessionInfo(drinkingTime: 0.0, sessionStartTime: Date(), sessionEndDate: Date())
    var enteredDrinks: [DrinkInfo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        print(enteredDrinks[0].name)
        // Do any additional setup after loading the view.
        let userBAC = calculateUserBAC()
        let lowEnd = String(format: "%.03f", userBAC[0])
        let highEnd = String(format: "%.03f", userBAC[1])
        //print(userBAC[1])
        lowEndLabel.text = lowEnd
        highEndLabel.text = highEnd
        enterNewDrinkButton.layer.cornerRadius = 20;
        enterNewDrinkButton.frame = CGRect(x: 100, y: 100, width: 60, height: 20);
    }
    
    func calculateUserBAC() -> [Double]{
        let genBAC = calculateGenForm(user: finalUserData, drink: enteredDrinks[0], session: currentSession)
        let widmarkBAC = calculateWidmarkForm(user: finalUserData, drink: enteredDrinks[0], session: currentSession)
        return [genBAC, widmarkBAC]
    }
    
    @IBOutlet var lowEndLabel: UILabel!
    @IBOutlet var highEndLabel: UILabel!
    @IBOutlet var enterNewDrinkButton: UIButton!
    
    
    @IBAction func enterNewDrinkButton(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
