//
//  PlacesModel.swift
//  Places
//
//  Created by Ilgar Ilyasov on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit
import MapKit


// If you're going to include an instance in IB
// Connect to IB you need to have a dessendent of NSObject
// When you create an instance in IB it must dessent NSObject

class PlacesModel: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var places: [Location] = []
    let geocoder = CLGeocoder() // It takes a name/description and turn it a location with coordinates
    
    weak var mapViewController: MapViewController?
    weak var tableView: UITableView?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    let cellReuseIdentifier = "Cell"

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.textLabel?.text = places[indexPath.row].name
        return cell
    }
    
    
}
