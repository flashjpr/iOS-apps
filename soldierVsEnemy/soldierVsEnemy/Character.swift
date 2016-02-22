//
//  Character.swift
//  soldierVsEnemy
//
//  Created by Mihai Alexandru Ionut Fleseriu on 21/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp:Int = 100
    private var _attackPower:Int = 10
    
    var attackPower:Int  {
        get {
            return _attackPower
        }
    }
    
    var hp:Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp:Int, attackPwr:Int) {
        
        self._hp = startingHp
        self._attackPower = attackPwr
    }
    
    func attemptAttack(attackPwr : Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
    
    
}