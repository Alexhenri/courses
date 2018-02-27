//
//  ViewController.swift
//  Hello_World
//
//  Created by Alexandre Henrique Silva on 27/02/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var profileLabel: UILabel!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        profileLabel.text = nameTextField.text
        
        nameLabel.isHidden          = true
        emailLabel.isHidden         = true
        passwordLabel.isHidden      = true
        emailTextField.isHidden     = true
        passwordTextField.isHidden  = true
        nameTextField.isHidden      = true
        submitButton.isHidden       = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Hello World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

