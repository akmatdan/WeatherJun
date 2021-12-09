//
//  ListTVC.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 17/11/21.
//

import UIKit
import CoreLocation

class ListTVC: UITableViewController {
    
    let nameCitiesArray = ["Москва", "Петербург", "Пенза"]
    
    let networkWeatherManager = NetworkWeatherManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkWeatherManager.fetchWeather()
        getCoordinateFrom(city: "Москва") { (coordinate, error) in
            print(coordinate)
        }
        
    }
    
    func getCoordinateFrom(city: String, complition: @escaping(_ coordinate: CLLocationCoordinate2D?, _ error: Error?) -> () ) {
        CLGeocoder().geocodeAddressString(city) {(placemark, error) in
            complition(placemark?.first?.location?.coordinate, error)
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
}
