//
//  LocationsListView.swift
//  SwiftfulMapApp
//
//  Created by Thomas on 1/10/25.
//

import SwiftUI

struct LocationsListView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                HStack {
                    if let imageName = location.imageNames.first {
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 45, height: 45)
                            .cornerRadius(10)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    LocationsListView()
        .environmentObject(LocationsViewModel())
}
