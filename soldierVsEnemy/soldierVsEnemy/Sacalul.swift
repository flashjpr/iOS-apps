//
//  Sacalul.swift
//  soldierVsEnemy
//
//  Created by Mihai Alexandru Ionut Fleseriu on 21/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import Foundation

class Sacalul: Enemy {

    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["The lost teeth", "The rachiul of N.Nelu", "Amnezia"]
    }
    
    override var type: String {
        return "Sacalul"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
    
}