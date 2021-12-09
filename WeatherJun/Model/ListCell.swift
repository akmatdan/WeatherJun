//
//  ListCell.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 9/12/21.
//

import UIKit

class ListCell: UITableViewCell {
    @IBOutlet var nameCityLabel: UILabel!
    @IBOutlet var conditionCityLabel: UILabel!
    @IBOutlet var tempCityLabel: UILabel!
    
    func Configure(weather: Weather) {
        self.nameCityLabel.text = weather.name
        self.conditionCityLabel.text = weather.condition
        self.tempCityLabel.text = weather.temperatureString
    }
}
