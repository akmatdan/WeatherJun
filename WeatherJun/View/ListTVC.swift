//
//  ListTVC.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 17/11/21.
//

import UIKit

class ListTVC: UITableViewController {
    
    var citiesArray = [Weather]()
    let nameCitiesArray = ["Москва", "Петербург", "Пенза"]
    
    let emtyCity = Weather()
    
    let networkWeatherManager = NetworkWeatherManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if citiesArray.isEmpty {
            citiesArray = Array(repeating: emtyCity, count: nameCitiesArray.count)
        }
        
        addCities()
    }
    
    func addCities() {
        getCityWeather(citiesArray: self.nameCitiesArray) { (index, weather) in
            
            self.citiesArray[index] = weather
            self.citiesArray[index].name = self.nameCitiesArray[index]
            print(self.citiesArray)
        }
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citiesArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! ListCell
        
        
        
        return cell
    }
}
