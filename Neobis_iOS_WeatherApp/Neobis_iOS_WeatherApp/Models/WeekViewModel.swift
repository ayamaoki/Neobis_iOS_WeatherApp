//
//  WeekViewModel.swift
//  Neobis_iOS_WeatherApp
//
//  Created by Yo on 4/12/23.
//

import Foundation
import UIKit

protocol WeekViewModelType {
    
    var updateWeek: ((weekWelcome) -> ())? { get set}
    
    func fetchWeekWeatherData(for cityName: String)
}

class WeekViewModel: WeekViewModelType {
    
    private var weekWeatherService: WeatherService!
    private(set) var weekWeatherData : weekWelcome? {
        didSet {
            self.bindWeekWeatherViewModelToController()
        }
    }
    
    var bindWeekWeatherViewModelToController : (() -> ()) = {}
    
    var updateWeek: ((weekWelcome) -> ())?
    
    init() {
        self.weekWeatherService = WeatherService()
        fetchWeekWeatherData(for: "Bishkek")
    }
    
    func fetchWeekWeatherData(for cityName: String) {
        weekWeatherService.fetchWeekWeather(for : cityName) { (weekWeatherData) in
            self.weekWeatherData = weekWeatherData
            self.updateWeek?(weekWeatherData)
        }
    }
}
