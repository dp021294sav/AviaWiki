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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateModels(name: String) {
        modelsNameLabel.text = name
    }
}
