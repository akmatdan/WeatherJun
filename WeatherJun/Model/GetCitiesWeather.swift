//
//  GetCitiesWeather.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 9/12/21.
//

import Foundation
import CoreLocation

func getCoordinateFrom(city: String, complition: @escaping(_ coordinate: CLLocationCoordinate2D?, _ error: Error?) -> () ) {
    CLGeocoder().geocodeAddressString(city) {(placemark, error) in
        complition(placemark?.first?.location?.coordinate, error)
    }
}
