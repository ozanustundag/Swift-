//
//  ViewController.swift
//  SegueApp
//
//  Created by Ozan USTUNDAG on 28.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Lifecycle
         print("viewDidLoad called")
        
    }

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var FirstTextField: UITextField!
    
    @IBAction func nextButton(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            let destinationVC  = segue.destination as! _ndViewController //as! _ndViewController
            
            if let newName = FirstTextField.text {
                destinationVC.myName = newName
                            }
            
        
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewdiddissepear func called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print ("viewWillAppear func called")
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDissepear func called")
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print ("viewDidAppear func called")
    }
}

