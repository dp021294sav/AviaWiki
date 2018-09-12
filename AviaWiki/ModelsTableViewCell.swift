//
//  ModelsTableViewCell.swift
//  AviaWiki
//
//  Created by Андрей Сергиенко on 07.09.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class ModelsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var modelsNameLabel: UILabel!
    var model: Vehicle?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateModels(models: [String]) {
        
        modelsNameLabel.text = models[0] //сделал для понимания, работает ли вообще 
        }
    }



