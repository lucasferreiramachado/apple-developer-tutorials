//
//  Landmark.swift
//  Landmarks
//
//  Created by Lucas Ferreira Machado on 07/08/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    var image: Image {
        Image(imageName)
    }

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    private var imageName: String
    private var coordinates: Coordinates

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
