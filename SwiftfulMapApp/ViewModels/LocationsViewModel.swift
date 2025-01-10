//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Thomas on 1/10/25.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
