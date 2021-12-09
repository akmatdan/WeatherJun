//
//  ListTVC.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 17/11/21.
//

import UIKit

class ListTVC: UITableViewController {
    
    let nameCitiesArray = ["Москва", "Петербург", "Пенза"]
    
    let networkWeatherManager = NetworkWeatherManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkWeatherManager.fetchWeather()
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
