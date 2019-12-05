//
//  Place.swift
//  StudySpaces
//
//  Created by Kenny Chi on 11/21/19.
//  Copyright © 2019 Kenny Chi. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Place: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var category: Category
    var isFavorite: Bool
    var capacity: Int
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
        
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case library = "Library"
        case studyroom = "Study Room"
        case cafe = "Cafe"
    }
}
extension Place {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
