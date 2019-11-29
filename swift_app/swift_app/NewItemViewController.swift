//
//  NewItemViewController.swift
//  swift_app
//
//  Created by glumes on 2019/11/29.
//  Copyright © 2019 glumes. All rights reserved.
//

import Foundation
import UIKit


protocol NewItemViewControllerDelegate {
    func addNewItem(controller : NewItemViewController,item:Item)
}

class NewItemViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var brandTextField: UITextField!
    
    @IBOutlet weak var saveBtn: UIButton!
    
    var delegate : NewItemViewControllerDelegate! = nil
    
//    var itemData:Item = Item(itemName: "this is item", brandName: "this is brand")
    var itemData:Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveItem(_ sender: UIButton) {
//        if nameTextField.text != nil && brandTextField.text != nil {
//            itemData = Item(itemName: nameTextField.text ?? "defalut name", brandName: brandTextField.text ?? "default brand")
//        }
        
        itemData = Item(itemName: "this is item", brandName: "this is brand")
//        dismiss(animated: true, completion: nil)
        if  itemData != nil {
            delegate.addNewItem(controller: self, item:itemData!)
        }
        
        saveBtn.addTarget(self, action: Selector, for: .touchUpInside)

    }
    
    func push() -> Void {
        let vc = 
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
