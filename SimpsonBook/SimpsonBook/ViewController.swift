//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ozan USTUNDAG on 6.01.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    @IBOutlet weak var myTableView: UITableView!
    let simpsons = Simpsons()
    var chosenSimpsonName = ""
    var chosenSimpsonImage = UIImage()
    var chosenSimJob = ""
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
        navigationItem.title = "Simpsons Wiki"
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsons.names[indexPath.row]
        return cell
        
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimJob = simpsons.jobs[indexPath.row]
        chosenSimpsonName = simpsons.names[indexPath.row]
        chosenSimpsonImage = simpsons.images[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender:  nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as? ViewController2
            destinationVC?.selectedSimName = chosenSimpsonName
            destinationVC?.selectedSimImage = chosenSimpsonImage
            destinationVC?.selectedSimJob = chosenSimJob
           
        }
    }
}

