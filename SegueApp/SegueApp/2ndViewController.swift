//
//  2ndViewController.swift
//  SegueApp
//
//  Created by Ozan USTUNDAG on 28.12.2021.
//

import UIKit

class _ndViewController: UIViewController {

    var myName = ""
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondNameLabel.text = myName

    }
    


    
    
}
