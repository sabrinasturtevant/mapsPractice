//
//  ViewController.swift
//  mapsPractice
//
//  Created by Sabrina Sturtevant on 3/18/20.
//  Copyright © 2020 Sabrina Sturtevant. All rights reserved.
//





import UIKit
import MapKit

class ViewController : UIViewController {
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self as! CLLocationManagerDelegate
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()

    }
    
    
}

extension ViewController : CLLocationManagerDelegate {
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {

        if status == .authorizedWhenInUse {
            locationManager.requestLocation()
        }
    }

    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //something wrong with this line i think
        locationManager.delegate = self

    if locations.first != nil {
            print("location:: (location)")
        }
    }

    func locationManager(manager: CLLocationManager, didFailWithError error: Error) {
        
        print("error:: \(error.localizedDescription)")    }
}






/////////////////////////takes you to big ben
//import UIKit
//import MapKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//       let location = CLLocationCoordinate2D(latitude: 51.50007773,
//                longitude: -0.1246402)
//
//            let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//            let region = MKCoordinateRegion(center: location, span: span)
//                mapView.setRegion(region, animated: true)
//
//            let annotation = MKPointAnnotation()
//            annotation.coordinate = location
//            annotation.title = "Big Ben"
//            annotation.subtitle = "London"
//            mapView.addAnnotation(annotation)
//    }
//
//    @IBOutlet weak var mapView: MKMapView!
    ////MUST ADD MAPVIEW BACK IN
//
//}








///////////////////////////////does not work

//override func viewDidLoad() {
//    super.viewDidLoad()
//    // 1
//    let location = CLLocationCoordinate2D(latitude: 51.50007773,
//        longitude: -0.1246402)
//
//    // 2
//    let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//    let region = MKCoordinateRegion(center: location, span: span)
//        mapView.setRegion(region, animated: true)
//
//    //3
//    let annotation = MKPointAnnotation()
//    annotation.coordinate = location
//    annotation.title = "Big Ben"
//    annotation.subtitle = "London"
//    mapView.addAnnotation(annotation)
//}

//override func viewDidLoad() {
//    super.viewDidLoad()
//
//    setupSearchController()
//}
//
//func setupSearchController() {
//    resultsViewController = GMSAutocompleteResultsViewController()
//    searchController = UISearchController(searchResultsController: resultsViewController)
//    searchController?.searchResultsUpdater = resultsViewController
//
//    let searchBar = searchController!.searchBar
//    searchBar.sizeToFit()
//    searchBar.placeholder = "Search for places"
//    navigationItem.titleView = searchController?.searchBar
//    definesPresentationContext = true
//    searchController?.hidesNavigationBarDuringPresentation = false
//}
