//
//  ViewController.swift
//  Maps
//
//  Created by Alexandre Henrique Silva on 19/03/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let latitude:   CLLocationDegrees = -22.9001132
        let longitude:  CLLocationDegrees = -43.301203
        
        let latDelta: CLLocationDegrees = 0.01
        
        let lonDelta: CLLocationDegrees = 0.01

        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.title = "My House"

        annotation.subtitle = "Alex's home"
        
        annotation.coordinate = location
        
        map.addAnnotation(annotation)
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:)))
        
        uilpgr.minimumPressDuration = 2
        map.addGestureRecognizer(uilpgr)
    }
    
    @objc func longpress(gestureRecognizer: UIGestureRecognizer){
        
        let touchPoint = gestureRecognizer.location(in: self.map)
        
        let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
        
        let annotation  = MKPointAnnotation()
        
        annotation.coordinate = coordinate
        
        annotation.title = "New place"
        
        annotation.subtitle = "Just testing"
        
        map.addAnnotation(annotation)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

