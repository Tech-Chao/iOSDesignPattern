//
//  WeatherData.swift
//  Observe01
//
//  Created by FishYu on 2019/8/2.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

import Foundation

class WeahterData: Subject {
    var observers: [Observer] = []
    private var temperature: Float?
    private var humidity: Float?
    private var presure: Float?
    
    func measurementsChanged() {
        notifyObserves()
    }
    
    func setMeasurements(temperature: Float?, humidity: Float?,presure: Float?) {
        self.temperature = temperature
        self.humidity = humidity
        self.presure = presure
        measurementsChanged()
    }
    
    // MARK: -
    // MARK: Subject Protocol
    func registerObserver(o: Observer) {
        observers.append(o)
    }
    
    func removeObserver(o: Observer) {
#warning("swift 的协议类型如何判等，不知道..后期补充")
//        for (index,observer) in observers.enumerated() {
//            if o == observer {
//                observers.remove(at: index)
//            }
//        }
    }
    
    func notifyObserves() {
        for observer in observers {
            observer.update(temp: temperature, humidity: humidity, pressure: presure)
        }
    }
    
}
