//
//  FavoritesTableController.swift
//  BAC Calculator
//
//  Created by Live the Fourth on 12/13/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.

import UIKit

class FavoritesTableController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table View Functions

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
        // #warning Incomplete implementation, return the number of rows
        return favorites[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoritesCell", for: indexPath)
        
        cell.textLabel?.text = favorites[indexPath.section][indexPath.row].name

        return cell
    }
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        //print("Here is a test of the accessory button")
        var favIndices = (favCellIndex: 0, sectionIndex: 0)
        favIndices.favCellIndex = indexPath.row
        favIndices.sectionIndex = indexPath.section
        performSegue(withIdentifier: "calculateBACSegueFromFavorite", sender: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell: UITableViewCell = tableView.cellForRow(at: indexPath)!
        cell.accessoryType = UITableViewCell.AccessoryType.detailDisclosureButton
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell: UITableViewCell = tableView.cellForRow(at: indexPath)!
        cell.accessoryType = UITableViewCell.AccessoryType.none
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Delete the row from the data source
            favorites[indexPath.section].remove(at: indexPath.row)
            drinkIndices[indexPath.section].remove(at: indexPath.row)
           //drinkIndices[indexPath.section].remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "calculateBACSegueFromFavorite"{
            let showBACController = segue.destination as! ShowBACController
            if sender != nil{
                let index: IndexPath = sender as! IndexPath
                var drinkCellSelected: DrinkInfo
                drinkCellSelected = favorites[index.section][index.row]
                showBACController.enteredDrinks.append(drinkCellSelected)
            }
            else{
                
            }
        }
        
        
    }
}
