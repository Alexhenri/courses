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
        resultLabel.isHidden = false
        let ageInCatYears    = Int(ageTextField.text!)! * 7
        ageResultLabel.text  = String(ageInCatYears)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

