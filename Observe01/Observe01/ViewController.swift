//
//  ViewController.swift
//  Observe01
//
//  Created by FishYu on 2019/8/2.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = WeahterData()
        var currentDispaly = CurrentConditionsDisplay(data)
        data.setMeasurements(temperature: 10, humidity: 20, presure: 30)
    }
    

}

