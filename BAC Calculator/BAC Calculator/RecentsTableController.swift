//
//  RecentsTableController.swift
//  BAC Calculator
//
//  Created by Live the Fourth on 12/13/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import UIKit

class RecentsTableController: UITableViewController {
    @IBOutlet var recentsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        recentsTableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 1:
            return "Liquor"
        case 2:
            return "Wine"
        default:
            return "Beer"
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recents[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recentsCell", for: indexPath)

        cell.textLabel?.text = recents[indexPath.section][indexPath.row].name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell: UITableViewCell = tableView.cellForRow(at: indexPath)!
        cell.accessoryType = UITableViewCell.AccessoryType.detailDisclosureButton
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell: UITableViewCell = tableView.cellForRow(at: indexPath)!
        cell.accessoryType = UITableViewCell.AccessoryType.none
    }
   
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
          if editingStyle == .delete {
              //Delete the row from the data source
              recents[indexPath.section].remove(at: indexPath.row)
              recentIndices[indexPath.section].remove(at: indexPath.row)
             //drinkIndices[indexPath.section].remove(at: indexPath.row)
              tableView.deleteRows(at: [indexPath], with: .fade)
              
          } else if editingStyle == .insert {
              // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
          }
      }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        //print("Here is a test of the accessory button")
        /*
        var drinkCellSelected: DrinkInfo
        drinkCellSelected = recents[indexPath.section][indexPath.row]
        print(drinkCellSelected)
        */
        performSegue(withIdentifier: "recentsToShowSegue", sender: indexPath)
    }
      
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "recentsToShowSegue"{
            let showBACController = segue.destination as! ShowBACController
            if sender != nil{
                let index: IndexPath = sender as! IndexPath
                var drinkCellSelected: DrinkInfo
                drinkCellSelected = recents[index.section][index.row]
                enteredDrinks.append(drinkCellSelected)
            }
        }
    }
    

}
