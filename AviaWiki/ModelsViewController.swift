//
//  ModelsViewController.swift
//  AviaWiki
//
//  Created by Андрей Сергиенко on 06.09.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class ModelsViewController: UIViewController {

    private var models: [Vehicle] = []
    @IBOutlet private weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        models = VehicleGenerator.generateVehicle()
    }
    
    
}
//MARK: - UITableViewDataSource, UITableViewDelegate
extension ModelsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return models.count
    }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ModelsTableViewCell", for: indexPath) as? ModelsTableViewCell else {
                fatalError("Wrong cell type")
            }
            let model = models[indexPath.row]
            cell.updateModels(models: model.models)
            return cell
    }
}
