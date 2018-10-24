//
//  DescriptionViewController.swift
//  AviaWiki
//
//  Created by Андрей Сергиенко on 10/22/18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    var model: Model?
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Детали"
        nameLabel.text = model?.name
        descriptionLabel.text = model?.description
    }
    
}
