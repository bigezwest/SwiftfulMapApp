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
