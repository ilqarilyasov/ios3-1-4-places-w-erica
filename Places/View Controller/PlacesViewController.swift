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
    let cellReuseIdentifier = "Cell"

    @IBOutlet weak var placesModel: PlacesModel!
    
}

