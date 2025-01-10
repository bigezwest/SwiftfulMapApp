//
//  LocationPreviewView.swift
//  SwiftfulMapApp
//
//  Created by Thomas on 1/10/25.
//

import SwiftUI

struct LocationPreviewView: View {
    
    let location: Location
    
    var body: some View {
        VStack {
            Text(location.name)
        }
    }
}

#Preview {
    LocationPreviewView(location: LocationsDataService.locations.first!)
}
