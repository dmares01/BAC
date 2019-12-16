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
    @IBOutlet var choiceOfAlcohol: UISegmentedControl!
    @IBAction func updateDrinkTable(_ sender: UISegmentedControl) {
        drinkTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch choiceOfAlcohol.selectedSegmentIndex {
        case 0:
            return beers.count
        case 1:
            return liquors.count
        case 2:
            return wines.count
        default:
            return liquors.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "drinkCell")
        let defaultCell = tableView.dequeueReusableCell(withIdentifier: "drinkCell")
        var drinkName: String = " "
        switch choiceOfAlcohol.selectedSegmentIndex {
        case 0:
            drinkName = beers[indexPath.row].name
            break
        case 1:
            drinkName = liquors[indexPath.row].name
            break
        case 2:
            drinkName = wines[indexPath.row].name
            break
        default:
            drinkName = beers[indexPath.row].name
        }
        cell?.textLabel?.text = drinkName
        
        defaultCell?.textLabel!.text = "Value not Loaded"
        return cell ?? defaultCell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let favoriteAction = UIContextualAction(style: .normal, title: "Favorite", handler:  { (action, view, completionHandler) in
            let favDrinkIndex = indexPath.row
            var favDrinkCellSelected: DrinkInfo
            //print(indexPath.row)
            switch self.choiceOfAlcohol.selectedSegmentIndex {
            case 0:
                favDrinkCellSelected = beers[favDrinkIndex]
                break
            case 1:
                favDrinkCellSelected = liquors[favDrinkIndex]
                break
            case 2:
                favDrinkCellSelected = wines[favDrinkIndex]
                break
            default:
                favDrinkCellSelected = beers[favDrinkIndex]
            }
            favorites.append(favDrinkCellSelected)
            //print("Add favorite Tapped")
            //print(self.userData.name)
            completionHandler(true)
        })
        favoriteAction.backgroundColor = .blue
        let favoriteconfiguration = UISwipeActionsConfiguration(actions: [favoriteAction])
        return favoriteconfiguration
        
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
        beers.sort {$0.name < $1.name}
        liquors.sort {$0.name < $1.name}
        wines.sort {$0.name < $1.name}
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
            let numArray: Set<Character> = [".", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
            var noNumber: Bool = false
            text.forEach{char in
                if !numArray.contains(char) {
                    noNumber = true
                }
            }
            if noNumber{
                return(false, "Please enter a number")
            }
            else{
                return(true, "Please make sure to select pounds or kilograms")
            }
        }
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
            finalUserData = userData
            showBACController.currentSession.drinkingTime = Double(hoursSpentOutlet.text!)!;
            let drinkIndex = drinkTableView.indexPathForSelectedRow
            var drinkCellSelected: DrinkInfo
            switch choiceOfAlcohol.selectedSegmentIndex {
            case 0:
                drinkCellSelected = beers[(drinkIndex?.row)!]
                break
            case 1:
                drinkCellSelected = liquors[(drinkIndex?.row)!]
                break
            case 2:
                drinkCellSelected = wines[(drinkIndex?.row)!]
                break
            default:
                drinkCellSelected = beers[(drinkIndex?.row)!]
            }
            //let drinkCellSelected = drinks[(drinkIndex?.row)!]
            showBACController.enteredDrinks.append(drinkCellSelected)
            recents.append(drinkCellSelected)
        }
    }
   
    @IBAction func unwindToEnterDrinkController(_ unwindSegue: UIStoryboardSegue) {}
    
    
    
}


