//
//  LocationsView.swift
//  MapApp
//
//  Created by Murad Yarmamedov on 15.02.24.
//

import SwiftUI

struct LocationsView: View {
    
    @EnvironmentObject private var locationVM: LocationViewModel
    
    var body: some View {
        List {
            ForEach(locationVM.locations) {
                Text($0.cityName)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationViewModel())
}
