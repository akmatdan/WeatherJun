//
//  Weather.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 2/12/21.
//

import Foundation

struct Weather {
    
    let name: String = "Название"
    var temperature: Int
    var conditionCode: String
    var url: String
    var condition: String
    var pressureMm: Int
    var windSpeed: Int
    var tempMin: Int
    var tempMax: Int
    
    var conditionString: String {
        switch condition {
        case "clear":                   return "ясно"
        case "partly-cloudy":           return "малооблачно"
        case "cloudy":                  return "облачно с прояснениями"
        case "overcast":                return "пасмурно"
        case "drizzle":                 return "морось"
        case "light-rain":              return "небольшой дождь"
        case "rain":                    return "дождь"
        case "moderate-rain":           return "умеренно сильный дождь"
        case "heavy-rain":              return "сильный дождь"
        case "continuous-heavy-rain":   return "длительный сильный дождь"
        case "showers":                 return "ливень"
        case "wet-snow":                return "дождь со снегом"
        case "light-snow":              return "небольшой снег"
        case "snow":                    return "снег"
        case "snow-showers":            return "снегопад"
        case "hail":                    return "град"
        case "thunderstorm":            return "гроза"
        case "thunderstorm-with-rain":  return "дождь с грозой"
        case "thunderstorm-with-hail":  return "гроза с градом"
            
        default: return "Загрузка..."
        }
    }
    
    init?(weatherData: WeatherData) {
    
    temperature = weatherData.fact.temp
    conditionCode = weatherData.fact.icon
    url = weatherData.info.url
    condition = weatherData.fact.condition
    pressureMm = weatherData.fact.preassureMm
    windSpeed = weatherData .fact.windSpeed
    tempMin = weatherData.forecast.first!.parts.day.tempMin!
    tempMax = weatherData.forecast.first!.parts.day.tempMax!
    }
}
