//
//  Item.swift
//  swift_app
//
//  Created by glumes on 2019/11/29.
//  Copyright © 2019 glumes. All rights reserved.
//

import Foundation

class Item {
    var itemName:String = ""
    var brandName:String = ""
    var isBuy:Bool = false
    
    init(itemName:String,brandName:String,isBuy:Bool) {
        self.itemName = itemName
        self.brandName = brandName
        self.isBuy = isBuy
    }
    
    convenience init(itemName:String){
        self.init(itemName:itemName,brandName: "",isBuy:false)
    }
    
    convenience init(itemName:String,brandName:String){
        self.init(itemName:itemName,brandName:brandName,isBuy:false)
    }
    
    func description() ->String {
        return "itemName: \(itemName) brand: \(brandName) isBuy:\(isBuy)"
    }
}
