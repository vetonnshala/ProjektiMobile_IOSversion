//
//  Invoice.swift
//  IocApp
//
//  Created by arton on 7/14/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import Foundation

class Invoice{
    var id : String
    var name : String
    var title : String
    var type : String
    var comment : String
    var date : String
    var sum : String
    
    init(id:String,name:String,title:String,type:String,comment:String,date:String,sum:String) {
        
        self.id = id
        self.name = name
        self.title = title
        self.type = type
        self.comment = comment
        self.date = date
        self.sum = sum
    }
}
