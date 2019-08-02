//
//  DispalyObject.swift
//  Observe01
//
//  Created by FishYu on 2019/8/2.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

import Foundation


// MARK:- 公告板类
class CurrentConditionsDisplay: Observer, DisplayElement {
    
    private var temperature: Float?
    private var humidity: Float?
    private var weatherData: Subject
    
    init(_ weatherData: Subject) {
        self.weatherData = weatherData
        weatherData.registerObserver(o: self)
    }
    
    func update(temp: Float?, humidity: Float?, pressure: Float?) {
        self.temperature = temp
        self.humidity = humidity
        display()
    }
    
    func display() {
        print("Current Conditions: temperature \(String(describing: temperature)) humidity \(String(describing: humidity)) ")
    }
    
    
}

// MARK: -其它公告板实现

class WeatherForcastDisplay: Observer,DisplayElement {
    func update(temp: Float?, humidity: Float?, pressure: Float?) {
        
    }
    
    func display() {
    }
    
}
