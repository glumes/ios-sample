//
//  ItemViewController.swift
//  swift_app
//
//  Created by glumes on 2019/11/29.
//  Copyright © 2019 glumes. All rights reserved.
//

import Foundation

import UIKit

class ItemViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var brandLabel: UILabel!
    
    var itemName :String?
    var itemBrand:String?
    
    
    var itemData:Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
//        if itemName != nil {
//            nameLabel.text = itemName
//        }
//
//        if itemBrand != nil {
//            brandLabel.text = itemBrand
//        }
        if itemData != nil {
            nameLabel.text = itemData?.itemName
            brandLabel.text = itemData?.brandName
        }
    }
    @IBAction func isBuy(_ sender: UIButton) {
        if itemData != nil {
            if itemData?.isBuy == false {
                itemData?.isBuy = true
                nameLabel.textColor = UIColor.green
            }else{
                itemData?.isBuy = false
                nameLabel.textColor = UIColor.red
            }
            
//            NSLog(itemData?.description() ?? <#default value#>)
            
//            println(itemData?.description())
        }
    }
}
