//
//  AviaTransportTableViewCell.swift
//  AviaWiki
//
//  Created by Андрей Сергиенко on 05.09.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class AviaTransportTableViewCell: UITableViewCell {

    @IBOutlet private weak var aviaImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var modelsAmountLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func update(name: String, image: UIImage, amount: Int) {
        nameLabel.text = name
        aviaImageView.image = image
        modelsAmountLabel.text = "Количество моделей - \(amount)"
    }
    
}
