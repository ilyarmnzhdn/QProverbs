//
//  TableViewCell.swift
//  QProverbs
//
//  Created by Maxim Tvilinev on 22.12.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageProverbs: UIImageView!
    
    @IBOutlet weak var descriptionProverbs: UILabel!
    
    func inputInformationIntoTheCell(proverb: Proverb) {
        self.label.text = proverb.name
        self.descriptionProverbs.text = proverb.translate
        self.imageProverbs.image = UIImage(named: proverb.image)
    }
    
}
