//
//  LocationsView.swift
//  MapApp
//
//  Created by Murad Yarmamedov on 15.02.24.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var locationVM: LocationViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $locationVM.mapRegion)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                header
                    .padding()
                
                Spacer()
                
                ZStack {
                    ForEach(locationVM.locations) { location in
                        if locationVM.mapLocation == location {
                            LocationPreviewView(location: location)
                                .shadow(color: .black.opacity(0.5), radius: 20)
                                .padding()
                                .transition(.asymmetric(
                                    insertion: .move(edge: .trailing),
                                    removal: .move(edge: .leading)))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationViewModel())
}

extension LocationsView {
    var header: some View {
        VStack {
            Button {
                locationVM.toggleLocationsList()
            } label: {
                Text(locationVM.mapLocation.name + "," + locationVM.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: locationVM.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundStyle(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: locationVM.showLocationList ? 180 : 0))
                    }
            }
            
            if locationVM.showLocationList {
                LocationsListView()
            }
        }
        .foregroundStyle(.black)
        .background(.thickMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
}
