//
//  ViewController.swift
//  Cat Years
//
//  Created by Alexandre Henrique Silva on 27/02/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var ageResultLabel: UILabel!
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        //resultLabel.isHidden = false
        //let ageInCatYears    = Int(ageTextField.text!)! * 7
        //ageResultLabel.text  = String(ageInCatYears)
        
        // Try to avoid "!" as much as possible. It means "force unwraped" and cause app's crash.
        // When a property accepts a nil value, if we put "!", we are saying that the value NEVER be nil althoug it's accept.
        
        // In this case u're saying ageTextField.text aways has a non-nil value and the convertion of the String inputed to Int always succed. So, try to tap submit without input any age on textField or input any non-numeric character. (it will cause an app crash)
        
        
        // Solution 1:
        
        if let classicAgeString = ageTextField.text {
            if let classicAge = Int(classicAgeString) {
                let ageInCatYears = classicAge * 7
                ageResultLabel.text = "\(ageInCatYears)"
                resultLabel.isHidden = false
            } else {
                print("Error: non-numeric character inputed")
                // it would be nice if we comunicate any info to user =p
                return
            }
        } else {
            print("Error: could not get text from ageTextField")
            // it would be nice if we comunicate any info to user =p
            return
        }

        // Solution 2 (is the same):
        
//        guard let classicAgeString = ageTextField.text else {
//            print("Error: could not get text from ageTextField")
//            return
//        }
//
//        guard let classicAge = Int(classicAgeString) else {
//            print("Error: non-numeric character inputed")
//            return
//        }
//
//        let ageInCatYears = classicAge * 7
//        ageResultLabel.text = "\(ageInCatYears)"
//        resultLabel.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
    }
}
