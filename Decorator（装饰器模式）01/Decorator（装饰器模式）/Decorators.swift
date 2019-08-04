//
//  Decorators.swift
//  Decorator（装饰器模式）
//
//  Created by FishYu on 2019/8/3.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

import Foundation

// Abstract Class
class condimentDecorator: Beverage {

    override func getDescription() -> String {
        return "Abstract condimentDecorator"
    }
    
}


class Mocha: condimentDecorator {
    var  beverage: Beverage
    
    init(beverage: Beverage) {
        self.beverage = beverage
        super.init()
    }
    
    override func getDescription() -> String {
        return beverage.getDescription() + ",Mocha"
    }
    
    override func cost() -> Double {
        return beverage.cost() + 0.2
    }
}


class Soy: condimentDecorator {
    var beverage: Beverage
    init(beverage: Beverage) {
        self.beverage = beverage
        super.init()
    }
    
    
    override func getDescription() -> String {
        return beverage.getDescription() + ",Soy"
    }
    
    override func cost() -> Double {
        return beverage.cost() + 0.5
    }
}
