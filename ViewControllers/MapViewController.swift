//
//  MapViewController.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//

import UIKit
import MapKit
import CoreLocation


class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let complex1 = MKPointAnnotation()
        complex1.coordinate = CLLocationCoordinate2D (latitude: 45.0663, longitude: 39.0047)
        complex1.title = "Гарантия на Карякина"
        
        mapView.addAnnotation(complex1)
        
        let complex2 = MKPointAnnotation()
        complex2.coordinate = CLLocationCoordinate2D (latitude: 45.0622, longitude: 39.0092)
        complex2.title = "Кубанский"
        
        mapView.addAnnotation(complex2)
        
        let complex3 = MKPointAnnotation()
        complex3.coordinate = CLLocationCoordinate2D (latitude: 45.0976, longitude: 39.0020)
        complex3.title = "Лучший"
        
        mapView.addAnnotation(complex3)
        
        let complex4 = MKPointAnnotation()
        complex4.coordinate = CLLocationCoordinate2D (latitude: 45.0911, longitude: 39.0115)
        complex4.title = "Оникс"
        
        mapView.addAnnotation(complex4)
        
        let complex5 = MKPointAnnotation()
        complex5.coordinate = CLLocationCoordinate2D (latitude: 45.0622, longitude: 38.9624)
        complex5.title = "Тургенев"
        
        mapView.addAnnotation(complex5)
        
        let complex6 = MKPointAnnotation()
        complex6.coordinate = CLLocationCoordinate2D (latitude: 45.0559, longitude: 38.9982)
        complex6.title = "Сказка"
        
        mapView.addAnnotation(complex6)
        
        let complex7 = MKPointAnnotation()
        complex7.coordinate = CLLocationCoordinate2D (latitude: 45.0469, longitude: 38.9808)
        complex7.title = "Большой"
        
        mapView.addAnnotation(complex7)
        
        let complex8 = MKPointAnnotation()
        complex8.coordinate = CLLocationCoordinate2D (latitude: 45.0935, longitude: 38.9042)
        complex8.title = "Самолёт"
        
        mapView.addAnnotation(complex8)
        
        let complex9 = MKPointAnnotation()
        complex9.coordinate = CLLocationCoordinate2D (latitude: 45.0601, longitude: 39.0154)
        complex9.title = "Москва"
        
        mapView.addAnnotation(complex9)
        
        let complex10 = MKPointAnnotation()
        complex10.coordinate = CLLocationCoordinate2D (latitude: 45.0604, longitude: 39.0014)
        complex10.title = "Ривьера"
        
        mapView.addAnnotation(complex10)
        
        let complex11 = MKPointAnnotation()
        complex11.coordinate = CLLocationCoordinate2D (latitude: 45.0550, longitude: 39.0093)
        complex11.title = "Оскар"
        
        mapView.addAnnotation(complex11)
        
        let complex12 = MKPointAnnotation()
        complex12.coordinate = CLLocationCoordinate2D (latitude: 45.0265, longitude: 38.9591)
        complex12.title = "Адмирал"
        
        mapView.addAnnotation(complex12)
        
        let complex13 = MKPointAnnotation()
        complex13.coordinate = CLLocationCoordinate2D (latitude: 45.0236, longitude: 38.9912)
        complex13.title = "Краснодар"
        
        mapView.addAnnotation(complex13)
        
        let complex14 = MKPointAnnotation()
        complex14.coordinate = CLLocationCoordinate2D (latitude: 45.0194, longitude: 39.0152)
        complex14.title = "Примьера"
        
        mapView.addAnnotation(complex14)
        
        let complex15 = MKPointAnnotation()
        complex15.coordinate = CLLocationCoordinate2D (latitude: 45.0053, longitude: 39.0830)
        complex15.title = "Грин Парк"
        
        mapView.addAnnotation(complex15)
        
        let complex16 = MKPointAnnotation()
        complex16.coordinate = CLLocationCoordinate2D (latitude: 45.0614, longitude: 38.9464)
        complex16.title = "Седьмой континент"
        
        mapView.addAnnotation(complex16)
        
        let complex17 = MKPointAnnotation()
        complex17.coordinate = CLLocationCoordinate2D (latitude: 45.0370, longitude: 38.9712)
        complex17.title = "Центральный"
        
        mapView.addAnnotation(complex17)
        
        let complex18 = MKPointAnnotation()
        complex18.coordinate = CLLocationCoordinate2D (latitude: 45.0444, longitude: 38.9936)
        complex18.title = "Все Свои"
        
        mapView.addAnnotation(complex18)
        
        let complex19 = MKPointAnnotation()
        complex19.coordinate = CLLocationCoordinate2D (latitude: 45.0403, longitude: 38.9869)
        complex19.title = "Каскад"
        
        mapView.addAnnotation(complex19)
        
        let complex20 = MKPointAnnotation()
        complex20.coordinate = CLLocationCoordinate2D (latitude: 45.0558, longitude: 39.0035)
        complex20.title = "DEVELOPMENT PLAZA"
        
        mapView.addAnnotation(complex20)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        chechLocationEnable()
        
        let initiaLocation = CLLocation(latitude: 45.0402, longitude: 38.9756)
        mapView.centerLocation(initiaLocation)
        
        let cameraCenter = CLLocation(latitude: 45.0402, longitude: 38.9756)
        
        // Ограничение камеры по удалению
        let region = MKCoordinateRegion(center: cameraCenter.coordinate, latitudinalMeters: 20000, longitudinalMeters: 20000)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
        
        let zoomRage  = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 35000)
        mapView.setCameraZoomRange(zoomRage, animated: true)
    }
    
    func chechLocationEnable() {
        if CLLocationManager.locationServicesEnabled(){
            setupManager()
            checkAutorization()
        } else {
            showAllertLocation(title: "У вас выключена служба геолокации", message: "Чтобы включить перейдите в настройки", url: URL (string: "App-prefs:root = LOCATION_SERVICES"))
        }
    }
    
    func setupManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func checkAutorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways:
            break
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            locationManager.startUpdatingLocation()
            break
        case .denied:
            showAllertLocation(title: "Вы запретили использование местоположения", message: "Хотите это изменить?", url: URL(string: UIApplication.openSettingsURLString))
            break
        case .restricted:
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        default: break
        }
    }
    
    func showAllertLocation(title: String, message: String?, url: URL?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let settingsAction = UIAlertAction (title: "Настройки", style: .default) {(alert) in
            if let url = url {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        let cancelAction = UIAlertAction (title: "Отмена", style: .cancel, handler: nil)
        
        alert.addAction(settingsAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
}

extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last?.coordinate {
            let region = MKCoordinateRegion(center: location, latitudinalMeters: 2000, longitudinalMeters: 2000)
            mapView.setRegion(region, animated: false)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkAutorization()
    }
}

extension MKMapView {
    func centerLocation(_ location: CLLocation, regionRadius: CLLocationDistance = 2000) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: false)
    }
}


