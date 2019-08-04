//
//  Components.swift
//  Decorator（装饰器模式）
//
//  Created by FishYu on 2019/8/3.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

import UIKit

// Abstract Super Class
public class Beverage {
    var description = "Unknow Beverage"
    
    func getDescription() -> String {
        return description
    }
    
    func cost() -> Double {
        return 0
    }
}


public class Espresso: Beverage {
    override init() {
        super.init()
        description = "Espresso"
    }
    
    override func cost() -> Double {
        return 1.99
    }
}


public class BlackCoffe: Beverage {
    override init() {
        super.init()
        description = "BlackCoffe"
    }
    
    override func cost() -> Double {
        return 0.99
    }
}

