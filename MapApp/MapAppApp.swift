//
//  MapAppApp.swift
//  MapApp
//
//  Created by Murad Yarmamedov on 15.02.24.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var locationVM = LocationViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(locationVM)
        }
    }
}
