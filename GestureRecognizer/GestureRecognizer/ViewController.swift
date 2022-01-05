//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Ozan USTUNDAG on 5.01.2022.
//

import UIKit

class ViewController: UIViewController {
    var isKarsu = true
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic(){
        print("tapped")
        
        if isKarsu == true{
            imageView.image = UIImage(named:    "beckett")
            myLabel.text = "beckett"
        isKarsu = false
        }
        else    {
            imageView.image = UIImage(named:    "karsu")
            myLabel.text = "karsu"
            isKarsu = true
        }
    }


}

