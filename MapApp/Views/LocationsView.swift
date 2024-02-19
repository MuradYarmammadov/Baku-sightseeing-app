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
    @Environment(\.colorScheme) var colorScheme
    let maxWidthForIpad: CGFloat = 600
    
    var body: some View {
        ZStack {
            mapLayer
            
            VStack(spacing: 0) {
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
                locationsPreviewStack
            }
        }
        .sheet(item: $locationVM.showSheet, onDismiss: nil) { location in
                LocationDetailView(location: location)
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
                Text(locationVM.mapLocation.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: locationVM.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
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
    
    private var mapLayer: some View {
        Map(coordinateRegion: $locationVM.mapRegion,
            annotationItems: locationVM.locations) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .scaleEffect(locationVM.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        locationVM.showNextLocation(location: location)
                    }
            }
        }
            .ignoresSafeArea()
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(locationVM.locations) { location in
                if locationVM.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: .black.opacity(0.5), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
            }
        }

    }
}
