//
//  ListTVC.swift
//  WeatherJun
//
//  Created by Daniil Akmatov on 17/11/21.
//

import UIKit

class ListTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func fetchWeather() {
        let urlString = "https://api.weather.yandex.ru/v2/forecast?lat=42.826639?lon=75.058796"
        guard let url = URL(string: urlString) else { return }
        
        var request = URLRequest(url: url, timeoutInterval: Double.infinity)
        request.addValue("ee701582-f2a2-475f-a141-d9087f7040cb", forHTTPHeaderField: "X-Yandex-API-Key")
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            print(String(data: data, encoding: .utf8))
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
