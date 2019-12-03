//
//  Specials.swift
//  swift_app
//
//  Created by glumes on 2019/11/30.
//  Copyright © 2019 glumes. All rights reserved.
//

import UIKit

enum SpecialCatetory:Int {
    case food = 0,drink,clothing,stationery,mobile
}

class Specials: NSObject {
    var name:String = ""
    var brand:String = ""
    let category:SpecialCatetory!
    var price = 0.0
    var originPrice = 0.0
    var imageName:String = ""
    
    init(name:String,brand:String,category:SpecialCatetory,price:Double,originPrice:Double,imageName:String){
        self.name = name
        self.brand = brand
        self.category = category
        self.price = price
        self.originPrice = originPrice
        self.imageName = imageName
    }
    
}
