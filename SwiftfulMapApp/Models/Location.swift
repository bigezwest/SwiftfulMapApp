//
//  Location.swift
//  SwiftfulMapApp
//
//  Created by Thomas on 1/9/25.
//

import Foundation
import MapKit       // Necessary for CLLocationCoordinate2D

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Conform to Identifiable
    var id: String {
        // UUID() would make unique id's for this combination
        name + cityName
    }
}

/*
    Example of Location:
 
 Location(
     name: "Colosseum",
     cityName: "Rome",
     coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
     description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
     imageNames: [
         "rome-colosseum-1",
         "rome-colosseum-2",
         "rome-colosseum-3",
     ],
     link: "https://en.wikipedia.org/wiki/Colosseum")
 
 */
