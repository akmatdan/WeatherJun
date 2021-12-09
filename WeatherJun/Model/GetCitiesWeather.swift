//
//  GetCitiesWeather.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 9/12/21.
//

import Foundation
import CoreLocation

let networkWeatherManager = NetworkWeatherManager()

func getCityWeather(citiesArray: [String], complitionHandler: @escaping (Int, Weather) -> Void) {
     
    for (index, item) in citiesArray.enumerated() {
        
        getCoordinateFrom(city: item) { (coordinate, error) in
            guard let coordinate = coordinate, error == nil else { return }
            
            networkWeatherManager.fetchWeather(latitude: coordinate.latitude, longitude: coordinate.longitude) { (weather) in
                complitionHandler(index, weather)
            }
        }
    }
}

func getCoordinateFrom(city: String, complition: @escaping(_ coordinate: CLLocationCoordinate2D?, _ error: Error?) -> () ) {
    CLGeocoder().geocodeAddressString(city) {(placemark, error) in
        complition(placemark?.first?.location?.coordinate, error)
    }
}
