//
//  LocationViewModel.swift
//  MapApp
//
//  Created by Murad Yarmamedov on 15.02.24.
//

import Foundation

class LocationViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self .locations = locations
    }
}
