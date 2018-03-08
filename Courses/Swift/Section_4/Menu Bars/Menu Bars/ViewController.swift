//
//  ViewController.swift
//  Menu Bars
//
//  Created by Alexandre Henrique Silva on 07/03/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    @IBAction func cameraButtonPressed(_ sender: Any) {
        print("Camera Button Pressed")
        timer.invalidate()
    }
    
/* i don't know yet, but that way doesn't work
    func processTimer() {

        
        print("A second has passed!")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var timer = Timer()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("processTimer"), userInfo: nil, repeats: true)
        
    }*/
    
// but that way works fine
    @objc func processTimer() {
            
            print("A second has passed!")
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
        
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

