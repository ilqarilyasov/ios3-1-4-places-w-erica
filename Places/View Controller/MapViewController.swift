//
//  MapViewController.swift
//  Places
//
//  Created by Ilgar Ilyasov on 10/19/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var location: CLLocationCoordinate2D? {
        didSet { updateMapViewLocation() }
    }
    
    private func updateMapViewLocation() {
        guard let location = location, isViewLoaded else { return }
        let span = MKCoordinateSpan(latitudeDelta: 1.3, longitudeDelta: 1.3) // 1 is about to size of city, 2 half of US state size, 3 a region of the world, 4-5 state size
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
    }
    
    // When view finishes loading tries to updateMapView's Location
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMapViewLocation()
    }
}

