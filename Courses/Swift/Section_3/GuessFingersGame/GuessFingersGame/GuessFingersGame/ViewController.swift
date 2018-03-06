//
//  ViewController.swift
//  GuessFingersGame
//
//  Created by Alexandre Henrique Silva on 28/02/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessFingersNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessButtonPressed(_ sender: UIButton) {
        
        let fingersNumber = arc4random_uniform(6)
        
        if guessFingersNumber.text == nil || guessFingersNumber.text! == "" || Int(guessFingersNumber.text!)! < 0 || Int(guessFingersNumber.text!)! > 5 {
            
            resultLabel.textColor   = UIColor.red
            resultLabel.text        = "Please, enter a number from 0 to 5."
            
        } else if Int(guessFingersNumber.text!) == Int(fingersNumber) {
            
            resultLabel.textColor   = UIColor.green
            resultLabel.text        = "You're right. You won."
            
        } else {
            
            resultLabel.textColor   = UIColor.red
            resultLabel.text        = "Wrong! It was \(fingersNumber). You lose."
            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

