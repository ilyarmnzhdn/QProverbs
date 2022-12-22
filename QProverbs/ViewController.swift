//
//  ViewController.swift
//  QProverbs
//
//  Created by Maxim Tvilinev on 22.12.2022.
//

import UIKit

class ViewController: UIViewController {

    var newInputImage: UIImageView?
    var newInputName: String?
    var newInputDescription: String?
    
    @IBOutlet weak var inputImage: UIImageView!
    
    @IBOutlet weak var inputName: UILabel!
    
    @IBOutlet weak var inputDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputName.text = newInputName
        inputDescription.text = newInputDescription
        inputImage.image = newInputImage?.image
    }
    


}
