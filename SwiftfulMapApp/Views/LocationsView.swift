//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Thomas on 1/10/25.
//

import SwiftUI

class LocationsViewModel: ObservableObject {
    
}

struct LocationsView: View {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    LocationsView()
}
