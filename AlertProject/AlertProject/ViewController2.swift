//
//  ViewController2.swift
//  AlertProject
//
//  Created by Ozan USTUNDAG on 28.12.2021.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var savedPassword: UILabel!
    @IBOutlet weak var savedUserName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        savedPassword.text = ""
        savedUserName.text = ""
        let storedUserName = UserDefaults.standard.object(forKey: "userName")
        let storedPassword = UserDefaults.standard.object(forKey: "password")
        
        UserDefaults.standard.set(savedUserName.text, forKey: "userName")
        UserDefaults.standard.set(savedUserName.text, forKey: "password")
        
        savedPassword.text = (storedPassword as! String)
        savedUserName.text = (storedUserName as! String)
        // Do any additional setup after loading the view.
    }
    

 

}
