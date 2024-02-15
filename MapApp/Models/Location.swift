//
//  Location.swift
//  MapApp
//
//  Created by Murad Yarmamedov on 15.02.24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description : String
    let imageNames: [String]
    let link: String
    
    var id: String {
        name + cityName
    }
}
