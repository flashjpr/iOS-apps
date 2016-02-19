//
//  ViewController.swift
//  retro-calculator
//
//  Created by Mihai Alexandru Ionut Fleseriu on 19/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import UIKit
import AVFoundation     //for sounds

class ViewController: UIViewController {

    enum Operation : String {
        case Divide = "/"
        case Multiply = "*"
        case Substract = "-"
        case Add = "+"
//        case Equal = "="
        case Empty = "Empty"
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var soundForButton: AVAudioPlayer!  //if var is empty it will crash
    
    var runningNumber = ""
    var leftValString = ""
    var rightValString = ""
    var result = ""
    var currentOperation : Operation = Operation.Empty
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //When user double taps the counter label, app will CLEAR
        let doubleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "onClear:")
        
        doubleTap.numberOfTapsRequired = 2
        doubleTap.numberOfTouchesRequired = 1
        
        self.outputLabel.addGestureRecognizer(doubleTap)
        self.outputLabel.userInteractionEnabled = true
        
        
        //added path for sound  btn
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try soundForButton = AVAudioPlayer(contentsOfURL: soundUrl)
            soundForButton.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    @IBAction func numberPress(btn: UIButton!) {
        playSound()
        
        runningNumber += "\(btn.tag)"
        outputLabel.text = runningNumber
    }
    
    @IBAction func onDividePress(sender: AnyObject) {
        processOperation(Operation.Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(Operation.Multiply)
    }

    @IBAction func onSubstractPressed(sender: AnyObject) {
        processOperation(Operation.Substract)
    }

    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(Operation.Add)
    }
    
    @IBAction func onEqualPressed(sender: AnyObject) {
        processOperation(currentOperation)
    }
    
    func processOperation(op : Operation) {
        
        playSound()

        if currentOperation != Operation.Empty {
            
            checkForOperatorFirst()     //redundant I think, because I am already checking it in the if above
            
            //Selecting an Operator and than selecting another operator without pressing a number
            if runningNumber != "" {
                
                //Run some math
                rightValString = runningNumber
                runningNumber = ""
                
                if currentOperation == Operation.Divide {
                    result = "\(Double(leftValString)! / Double(rightValString)!)"
                } else if currentOperation == Operation.Multiply {
                    result = "\(Double(leftValString)! * Double(rightValString)!)"
                } else if currentOperation == Operation.Substract {
                    result = "\(Double(leftValString)! - Double(rightValString)!)"
                } else if currentOperation == Operation.Add {
                    result = "\(Double(leftValString)! + Double(rightValString)!)"
                }
                leftValString = result
                rightValString = ""
                outputLabel.text = result
            }
            currentOperation = op
            
        } else {
            //This is the first time an operator has been pressed
            leftValString = runningNumber
            runningNumber = ""
            currentOperation = op
        }
    }
    
    func playSound() {
        if soundForButton.playing == true {
            soundForButton.stop()
        }
        
        soundForButton.play()
    }
    
    func checkForOperatorFirst(){
        if leftValString == "" {
            leftValString = "0"
        }
    }
    
    func onClear(uiGestureRecognizer: UIGestureRecognizer){
        
        clear()
        
    }
    
    func clear(){
        
        currentOperation = Operation.Empty
        
        result = ""
        runningNumber = ""
        
        leftValString = ""
        rightValString = ""
        
        outputLabel.text = "0"
    }
    
}

