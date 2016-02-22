//
//  Invoker.swift
//  soldierVsEnemy
//
//  Created by Mihai Alexandru Ionut Fleseriu on 21/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import Foundation

class Invoker: Enemy {
    
    override var loot: [String] {
        return ["Aghanim Scepter","Ciorba de fasole", "Verdeata a la bong"]
    }
    
    override var type : String {
        return "Invoker"
    }
}