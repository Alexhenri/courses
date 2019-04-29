//
//  ViewController.swift
//  Download_Web_Content
//
//  Created by Alexandre Henrique Silva on 12/03/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let myUrl = URL(string: "https://www.google.com") else {
            return
        }
        
//        webView.load(URLRequest(url: myUrl))
        
        webView.loadHTMLString("<h1>Hello World</h1>", baseURL: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

