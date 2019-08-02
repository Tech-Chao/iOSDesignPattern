//
//  ViewController.swift
//  Observe02
//
//  Created by FishYu on 2019/8/2.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let observed = MyObjectToObserve()
        let observer = MyObserver(object: observed)
        observed.updateDate() // 出发观察者
        
    }

}

