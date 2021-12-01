//
//  WeatherData.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 1/12/21.
//

import Foundation

struct WeatherData: Decodable {
    
    let info: Info
    let fact: Fact
    let forecast: [Forecast]
}

struct Info: Decodable {
    let url: String
}

struct Fact: Decodable {
    let url: String
}

struct Forecast: Decodable {
    
}
