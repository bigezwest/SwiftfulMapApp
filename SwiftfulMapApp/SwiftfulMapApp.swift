//
//  SwiftfulMapApp.swift
//  SwiftfulMapApp
//
//  Created by Thomas on 1/9/25.
//

import SwiftUI

@main
struct SwiftfulMapApp: App {
    // Make ViewModel available to all views in app
    @StateObject private var vm = LocationsViewModel()

    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
