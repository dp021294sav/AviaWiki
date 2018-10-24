//
//  AviaViewController.swift
//  AviaWiki
//
//  Created by Андрей Сергиенко on 05.09.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class AviaViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private var vehicles: [Vehicle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Воздушный транспорт"
        tableView.delegate = self
        tableView.dataSource = self
        vehicles = VehicleGenerator.generateVehicle()
        tableView.reloadData()
    }
    
    //MARK: - Prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showModels" else {return}
        guard let destVC = segue.destination as? ModelsViewController else {return}
        guard let tableCell = sender as? UITableViewCell else {return}
        guard let indexPath = tableView.indexPath(for: tableCell)
            else {return}
        let oneVehicle = vehicles[indexPath.row]
        destVC.vehicle = oneVehicle
    }
}
    //MARK: - UITableViewDelegate, UITableViewDataSource
extension AviaViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AviaTransportTableViewCell", for: indexPath) as? AviaTransportTableViewCell else {
            fatalError("Wrong cell type")
        }
        let vehicle = vehicles[indexPath.row]
        cell.update(name: vehicle.name, image: vehicle.image, amount: vehicle.models.count)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.bounds.height * 0.3
    }

}
