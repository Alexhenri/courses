//
//  ViewController.swift
//  PermanentDataStorage
//
//  Created by Alexandre Henrique Silva on 08/03/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        /* Justing learnig UserDefaults
        UserDefaults.standard.set("Alex", forKey: "name")

        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        //checking if has value AND is a string type
        if let name = nameObject as? String {
            print(name)
        }
        
        let arrayTest = [1,2,3,4]
        
        UserDefaults.standard.set(arrayTest, forKey: "array")
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
                print(array)
        }
        */
        
        let phoneNumberObject = UserDefaults.standard.object(forKey: "phone")
        
        if let phoneNumber = phoneNumberObject as? String {
            phoneNumberTextField.text = phoneNumber
            phoneNumberTextField.isEnabled = false
        }
        
    }

    @IBAction func editButtonTapped(_ sender: Any) {
        phoneNumberTextField.isEnabled = true
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        //using guard just to you give me a break .i.
        
        guard let phoneNumber = phoneNumberTextField.text else {
            return
        }
        
        UserDefaults.standard.set(phoneNumber, forKey:"phone")
        phoneNumberTextField.isEnabled = false
    }

}

