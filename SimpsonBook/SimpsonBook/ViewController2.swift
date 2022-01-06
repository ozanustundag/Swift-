//
//  ViewController2.swift
//  SimpsonBook
//
//  Created by Ozan USTUNDAG on 6.01.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    var selectedSimName = "dd"
    var selectedSimImage = UIImage()
    var selectedSimJob = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = selectedSimImage
        nameLabel.text = selectedSimName
        jobLabel.text = selectedSimJob
        // Do any additional setup after loading the view.
    }
    


}
