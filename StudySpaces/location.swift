//
//  location.swift
//  StudySpaces
//
//  Created by Kenny Chi on 12/4/19.
//  Copyright © 2019 Kenny Chi. All rights reserved.
//

import Foundation
import CoreLocation
struct Location: Hashable {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            print("Found user's location: \(location)")
        }
    }
}
