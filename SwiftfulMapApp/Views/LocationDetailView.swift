//
//  LocationDetailView.swift
//  SwiftfulMapApp
//
//  Created by Thomas on 1/10/25.
//

import SwiftUI

struct LocationDetailView: View {
    
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                VStack (alignment: .leading, spacing: 16) {
                    VStack (alignment: .leading, spacing: 8) {
                        Text(location.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(location.cityName)
                            .font(.title)
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    LocationDetailView(location:
                        LocationsDataService.locations.first!)
}

extension LocationDetailView {
    private var imageSection: some View {
        TabView  {
            ForEach(location.imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
}
