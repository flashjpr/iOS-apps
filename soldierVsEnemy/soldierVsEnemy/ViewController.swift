//
//  ViewController.swift
//  soldierVsEnemy
//
//  Created by Mihai Alexandru Ionut Fleseriu on 21/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var enemyImg: UIImageView!
    @IBOutlet weak var chestBtn: UIButton!
    @IBOutlet weak var attackBtn: UIButton!
    
    // Properties
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for now init the player like this
        player = Player(name: "Her Fufrer", hp: 140, attackPwr: 20)
        
        generateRandEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
        enemyHpLbl.text = "\(enemy.hp) HP"

    }
    
    func generateRandEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Sacalul(startingHp: 50, attackPwr: 12)
        } else {
            enemy = Invoker(startingHp:130, attackPwr: 9)
        }
        
        enemyImg.hidden = false
        enemyHpLbl.text = "\(enemy.hp) HP"
    }
    
    @IBAction func onChestTap(sender: AnyObject) {
        
        chestBtn.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandEnemy", userInfo: nil, repeats: false)
    }
    
    @IBAction func attackTap(sender: AnyObject) {
        
        // attempt attack
        if enemy.attemptAttack(player.attackPower) {
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        } else {
            printLabel.text = "Attack failed"
        }
        
        // get loot
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        //enemy dies
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLabel.text = "Killed  \(enemy.type)"
            enemyImg.hidden = true
        }
        
    }

}



