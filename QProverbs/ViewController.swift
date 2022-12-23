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
        
        guard let proverbName = newInputName else { return }
        guard let proverbDescription = newInputDescription else { return }
        guard let proverbImage = newInputImage else { return }
        
        inputName.text = proverbName
        inputDescription.text = proverbDescription
        inputImage.image = proverbImage.image
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [inputName.text!, inputDescription.text!, inputImage.image!], applicationActivities: nil)
        
        present(shareController, animated: true)
        
        
    }
    

}
