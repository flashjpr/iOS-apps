//
//  ViewController.swift
//  Red and blue
//
//  Created by Mihai Alexandru Ionut Fleseriu on 13/02/2016.
//  Copyright © 2016 Mihai Alexandru Ionut Fleseriu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var x:Int = 0, y:Int = 0
    @IBOutlet weak var hideBlue: UIButton!
    @IBOutlet weak var hideRed: UIButton!

    @IBOutlet weak var bombRed: UIImageView!
    @IBOutlet weak var bombBlue: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func functHideBlue(sender: AnyObject) {
        if( x % 2 == 0){
            bombBlue.hidden = true
            hideBlue.setTitle("Show Blue Bomb", forState: UIControlState.Normal)
        }
        else{
            bombBlue.hidden = false
            hideBlue.setTitle("Hide Blue Bomb", forState: UIControlState.Normal)
        }
        x = x + 1

    }
    
    @IBAction func functHideRed(sender: AnyObject) {
        if( y % 2 == 0){
            bombRed.hidden = true
            hideRed.setTitle("Show Red Bomb", forState: UIControlState.Normal)
        }
        else{
            bombRed.hidden = false
            hideRed.setTitle("Hide Red Bomb", forState: UIControlState.Normal)
        }
        y = y + 1    }
    

}

