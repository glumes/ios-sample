//
//  ViewController.swift
//  swift_app
//
//  Created by glumes on 2019/11/29.
//  Copyright © 2019 glumes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,NewItemViewControllerDelegate {

    
    
    
//    let toBuyItems = [
//        ("a1","b1"),
//        ("a2","b2"),
//        ("a3","b3"),
//        ("a4","b4"),
//        ("a5","b5"),]
    
    var toBuyItems = [ Item(itemName:"a1",brandName:"b1"),
                       Item(itemName:"a2",brandName:"b2"),
                       Item(itemName:"a3",brandName:"b3"),
                       Item(itemName:"a4",brandName:"b4"),
                       Item(itemName:"a5",brandName:"b5"),
                       Item(itemName:"a6",brandName:"b6"),
                    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toBuyItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
//        cell.textLabel?.text = "milk"
        
//        let (item,brand) = toBuyItems[indexPath.row]
        
        let item = toBuyItems[indexPath.row]
        cell.textLabel?.text = item.itemName
        
        if item.isBuy {
            cell.textLabel?.textColor = UIColor.green
        } else{
            cell.textLabel?.textColor = UIColor.red
        }
        
        cell.detailTextLabel?.text = item.brandName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "itemSegue", sender: indexPath.row)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "itemSegue" {
            let destination : ItemViewController = segue.destination as! ItemViewController
            
            if sender is Int{
                
//                let (itemName,brandName) = toBuyItems[sender as! Int]
//
//                destination.itemName = itemName
//                destination.itemBrand = brandName
                
                let item = toBuyItems[sender as! Int]
                destination.itemData = item
            }
        } else if segue.identifier == "newItemSegue" {
            let destination :NewItemViewController = segue.destination as! NewItemViewController
            destination.delegate = self
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    func addNewItem(controller : NewItemViewController,item:Item){
        

        toBuyItems.append(item)
        tableView.reloadData()
        
        controller.dismiss(animated: true, completion: nil)
    }
}

