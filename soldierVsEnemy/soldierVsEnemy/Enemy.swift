//
//  Enemy.swift
//  soldierVsEnemy
//
//  Created by Mihai Alexandru Ionut Fleseriu on 21/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import Foundation

class Enemy: Character {

    var loot: [String] {
        return ["Ciocanul pierdut", "Medalionul lu' Cioaba"]
    }
    
    var type: String {
        return "Lup"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let random = Int(arc4random_uniform(UInt32(loot.count)))
            
            return loot[random]
        }
        
        return nil
    } // dropLoot
}