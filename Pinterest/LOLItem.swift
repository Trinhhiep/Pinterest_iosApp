//
//  LOLItem.swift
//  Pinterest
//
//  Created by Admin on 14/04/2021.
//


import Foundation
struct LOLItem{
    var id : Int
    var name: String
    var icon : String
    var subItem : [LOLItem]
    var price : Int
    var content : String
    var type : [ItemType]
    
}

struct ItemType {
    var typeId: Int
    var tpyeName: String
    
}
