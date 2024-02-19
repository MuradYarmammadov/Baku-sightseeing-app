//
//  LocationsListView.swift
//  MapApp
//
//  Created by Murad Yarmamedov on 16.02.24.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var locationVM: LocationViewModel
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        List {
            ForEach(locationVM.locations) { location in
                Button {
                    locationVM.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())
    }
}

#Preview {
    LocationsListView()
        .environmentObject(LocationViewModel())
}

extension LocationsListView {
    private func listRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                Text(location.cityName)
                    .font(.subheadline)
                    .foregroundStyle(colorScheme == .dark ? .white : .black)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
