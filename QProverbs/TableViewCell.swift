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
    
    func inputInformationIntoTheCell(proverb: Proverb) {
        self.label.text = proverb.name
        self.imageProverbs.image = UIImage(named: proverb.image)
        
    }
    
}
