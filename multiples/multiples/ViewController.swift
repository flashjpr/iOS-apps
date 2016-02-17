//
//  ViewController.swift
//  multiples
//
//  Created by Mihai Alexandru Ionut Fleseriu on 17/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //outlets visible before starting the game
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multipleTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    //outlets visible during the game
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var numbersLabel: UILabel!
    
    //user input
    var number:Int = 0
    var firstArgument:Int = 0
    var result:Int = 0
    var maxResult:Int = 0
    
    //game starts
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        if multipleTxt.text != nil && multipleTxt.text != "" {
            logo.hidden = true
            multipleTxt.hidden = true
            playBtn.hidden = true
        
            label.hidden = false
            add.hidden = false
        
            //get the user input , i.e. the multiple
            number = Int(multipleTxt.text!)!
            maxResult = 10 * number
        
            label.text = "Press Add to Add"
        }
    }
    
    @IBAction func onAddBtnPressed(sender: UIButton!) {
        
        //hide label which says "Press Add to ADD"
        label.hidden = true
        
        //show the needed label
        numbersLabel.hidden = false
        
        result = firstArgument + number
        numbersLabel.text = "\(firstArgument) + \(number) = \(result)"
        firstArgument = result

        if isGameOver() {
            restartGame()
        }
    }
    
    func isGameOver() -> Bool{
        if result >= maxResult{
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        number = 0
        result = 0
        firstArgument = 0
        multipleTxt.text = ""
        
        logo.hidden = false
        playBtn.hidden = false
        multipleTxt.hidden = false
        
        label.hidden = true
        numbersLabel.hidden = true
        add.hidden = true
    }
}

