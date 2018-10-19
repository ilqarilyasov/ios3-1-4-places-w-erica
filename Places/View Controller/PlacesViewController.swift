//
//  PlacesViewController.swift
//  Places
//
//  Created by Ilgar Ilyasov on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit
import CoreLocation

class PlacesViewController: UIViewController {
    
    let tableViewControllerSegueIdentifier = "TableViewControllerSegue"
    let mapviewControllerSegueIdentifier = "MapViewControllerSegue"

    @IBOutlet weak var placesModel: PlacesModel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        if identifier == tableViewControllerSegueIdentifier,
            let destination = segue.destination as? UITableViewController {
            placesModel.tableView = destination.tableView
            placesModel.tableView?.dataSource = placeModel
            placesModel.tableView?.delegate = placesModel
        }
        
        if identifier == mapviewControllerSegueIdentifier,
            let destination = segue.destination as? MapViewController {
            placesModel.mapViewController = destination
        }
    }
    
    @IBOutlet weak var field: UITextField!
    @IBAction func lookuoLocation(_ sender: Any) {
        guard let name = field.text, !name.isEmpty else { return }
        
        // Reset text
        self.field.text = ""
        placesModel.lookup(location: name)
    }
    
    
}

