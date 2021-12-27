//
//  ViewController.swift
//  ProblemApp
//
//  Created by Ozan USTUNDAG on 27.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var resultLbel: UILabel!
    @IBAction func calcFunc(_ sender: Any) {
        resultLbel.text = String(Int(textfield.text!)! * 10)
    }
    
    @IBOutlet weak var textfield: UITextField!
}

