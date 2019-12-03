//
//  SpecialsForSupermarketTVCTableViewController.swift
//  swift_app
//
//  Created by glumes on 2019/11/30.
//  Copyright © 2019 glumes. All rights reserved.
//

import UIKit


class SpecialsForSupermarketTVCTableViewController: UITableViewController {

    
    let specialItems = [
        Specials(name:"a1",brand:"brand1",category:.food,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a2",brand:"brand1",category:.food,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a3",brand:"brand1",category:.food,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a4",brand:"brand1",category:.food,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a5",brand:"brand1",category:.drink,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a6",brand:"brand1",category:.food,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a7",brand:"brand1",category:.drink,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a8",brand:"brand1",category:.food,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a9",brand:"brand1",category:.mobile,price:2.8,originPrice:5.3,imageName:"name"),
         Specials(name:"a0",brand:"brand1",category:.mobile,price:2.8,originPrice:5.3,imageName:"name")
    ]
    
    var categorySpecials = [Int:[Specials]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        for specials in specialItems{
            
            if categorySpecials[specials.category.rawValue] == nil {
                categorySpecials[specials.category.rawValue] = [specials]
            } else{
                categorySpecials[specials.category.rawValue]?.append(specials)
            }
            
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return categorySpecials.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let categroys = Array(categorySpecials.keys)
        
        return categorySpecials[categroys[section]]!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//         Configure the cell...

        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        let categroys = Array(categorySpecials.keys)
        
        let specials = categorySpecials[categroys[indexPath.section]]![indexPath.row]
        
        cell.textLabel?.text = specials.name
        cell.detailTextLabel?.text = specials.brand
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
