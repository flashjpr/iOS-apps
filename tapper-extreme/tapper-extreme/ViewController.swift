//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Mihai Alexandru Ionut Fleseriu on 14/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // outlets declaration
    // what is visible before starting the game
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    // what is visible during the game
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapLbl: UILabel!
    
    // properties
    var maxTaps = 0
    var currentTaps = 0

    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }

    @IBAction func onCoinBtnPressed(sender: UIButton!) {
        
        currentTaps = currentTaps + 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    // update the label 
    func updateTapsLbl(){
        tapLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true
        } else {
            return false
        }
    }

    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapLbl.hidden = true
    }
    
    // deal with keyboard hiding 
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        howManyTapsTxt.resignFirstResponder()
        
        return true
        
    }
}










