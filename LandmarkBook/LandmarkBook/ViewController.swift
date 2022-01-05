//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ozan USTUNDAG on 5.01.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var landMarNames = [String]()
    var landMarkImages = [UIImage]()
    
    var chosenLandMarkName = ""
    var chosenLandMarImage = UIImage()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        landMarNames.append("Colosseum")
        landMarNames.append("GreatWall")
        landMarNames.append("Giza")
        landMarNames.append("Stonehenge")
        landMarNames.append("ZeusTemple")
        
        landMarkImages.append(UIImage(named: "Colosseum.jpg")!)
        landMarkImages.append(UIImage(named: "GreatWall.jpg")!)
        landMarkImages.append(UIImage(named: "Giza.jpg")!)
        landMarkImages.append(UIImage(named: "Stonehenge.jpg")!)
        landMarkImages.append(UIImage(named: "ZeusTemple.jpg")!)
        
        navigationItem.title = "Landmark Book"

        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landMarNames.remove(at:indexPath.row)
            landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell()
        cell.textLabel?.text = landMarNames[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarNames.count
            
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         chosenLandMarkName = landMarNames[indexPath.row]
         chosenLandMarImage = landMarkImages[indexPath.row]
        performSegue(withIdentifier : "toImageviewController", sender:nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageviewController"{
            let destinationVC = segue.destination as!  imageViewController
            destinationVC.selectedLandMarkName = chosenLandMarkName
            destinationVC.selectedImage = chosenLandMarImage
        }
    }
}

