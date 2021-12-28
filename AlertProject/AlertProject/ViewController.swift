//
//  ViewController.swift
//  AlertProject
//
//  Created by Ozan USTUNDAG on 28.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showSavedButton(_ sender: Any) {
        performSegue(withIdentifier: "toSecondPage", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondPage" {
            let destinationVC = segue.destination as! ViewController2
            
            destinationVC.savedUserName.text = userNameTextField.text
            destinationVC.savedPassword.text = passwordTextField.text
        }
    }
    @IBAction func signUpButton(_ sender: Any) {
        
        if  (userNameTextField.text) == ""
        {
           alert(a: "Does not found username")
        }
        
        if (passwordTextField.text) != passwordAgainTextField.text
        {
            alert(a: "passwords does not match")
                
            }
        
        
        }
    func alert(a : String){
        
        let alert = UIAlertController(title: "ERROR", message: a, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in print("button clicked")}
        
        alert.addAction(okButton)
        
        self.present(alert,animated: true, completion: nil)    }
        
    }
    


