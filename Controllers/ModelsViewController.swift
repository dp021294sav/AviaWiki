//
//  ModelsViewController.swift
//  AviaWiki
//
//  Created by Андрей Сергиенко on 06.09.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class ModelsViewController: UIViewController {

    var vehicle: Vehicle?
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Модели"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    // MARK: Prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDescription" else {return}
        guard let destVC = segue.destination as? DescriptionViewController else {return}
        guard let tableCell = sender as? UITableViewCell else {return}
        guard let indexPath = tableView.indexPath(for: tableCell) else {return}
        destVC.model = vehicle?.models[indexPath.row]
    }
    
}
// MARK: - UITableViewDataSource, UITableViewDelegate
extension ModelsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return vehicle?.models.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ModelsTableViewCell", for: indexPath) as? ModelsTableViewCell else {
            fatalError("Wrong cell type")
        }
        let model = vehicle?.models[indexPath.row]
        cell.updateModels(name: model?.name ?? "")
        return cell
    }
}
