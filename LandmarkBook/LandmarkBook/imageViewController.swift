//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Ozan USTUNDAG on 5.01.2022.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage = UIImage()
    var selectedLandMarkName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = selectedLandMarkName
        imageView.image = selectedImage
    }
    

    
}
