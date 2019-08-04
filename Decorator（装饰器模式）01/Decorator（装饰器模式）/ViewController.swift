//
//  ViewController.swift
//  Decorator（装饰器模式）
//
//  Created by FishYu on 2019/8/3.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var beverage =  Espresso() as Beverage
        print(beverage.getDescription(),beverage.cost())
        
        beverage = Mocha(beverage: beverage) as Beverage
        print(beverage.getDescription(),beverage.cost())

        beverage = Soy(beverage: beverage) as Beverage
        print(beverage.getDescription(),beverage.cost())
    }


}

