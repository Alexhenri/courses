//
//  ViewController.swift
//  Animations
//
//  Created by Alexandre Henrique Silva on 15/03/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animateButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var tableView: UIImageView!
    
    var timer            = Timer()
    var imageIndex       = 0
    var isAnimating      = false
    let imageNameModel   = "frame_%number%_delay-0.04s.gif"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func animateImage() {
        var imageName: String
        
        if imageIndex < 10 {
            imageName = imageNameModel.replacingOccurrences(of: "%number%", with: "00\(imageIndex)")
        } else if imageIndex < 100 {
            imageName = imageNameModel.replacingOccurrences(of: "%number%", with: "0\(imageIndex)")
        } else {
            imageName = imageNameModel.replacingOccurrences(of: "%number%", with: "\(imageIndex)")
        }
    
        imageIndex += 1
        if imageIndex == 134 {
            imageIndex = 0
        }
        
        if let imageResult = UIImage(named: imageName) {
            image.image = imageResult
        }
    }
    
    @IBAction func growButtonTapped(_ sender: Any) {
        image.frame = CGRect(x: tableView.center.x, y: tableView.center.y, width: 0, height: 0)
        
        UIView.animate(withDuration: 2) {
            self.image.frame = CGRect(x: self.tableView.center.x, y: self.tableView.center.y, width: 200, height: 200)
        }
    }
    
    @IBAction func fadeInButtonTapped(_ sender: Any) {
        image.alpha = 0
        UIView.animate(withDuration: 2) {
            self.image.alpha = 1
        }
        
    }

    @IBAction func slideInButtonTapped(_ sender: Any) {
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        UIView.animate(withDuration: 2) {
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)

        }
    }

    @IBAction func animateButtonTapped(_ sender: Any) {
        
        timer.invalidate();
        if !isAnimating {
            timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(animateImage), userInfo: nil, repeats: true)
            isAnimating = true
            animateButton.setTitle("Stop Animation", for: [])

        } else {
            isAnimating = false
            animateButton.setTitle("Start Animation", for: [])
        }
    }

}

