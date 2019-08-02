//
//  CustomProtocol.swift
//  Observe01
//
//  Created by FishYu on 2019/8/2.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

import Foundation

/// 展示数据
public protocol DisplayElement {
    func display()
}

public protocol Observer {
    /// 更新数据
    func update(temp: Float?, humidity: Float?, pressure: Float?)
}

public protocol Subject {
    /// 对观察者操作
    func registerObserver(o: Observer)
    func removeObserver(o: Observer)
    func notifyObserves()
}


