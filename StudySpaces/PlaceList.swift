//
//  PlaceList.swift
//  StudySpaces
//
//  Created by Kenny Chi on 11/23/19.
//  Copyright © 2019 Kenny Chi. All rights reserved.
//

import SwiftUI

struct PlaceList: View {
    var body: some View {
        NavigationView {
            List(placeData) { place in
                PlaceRow(place: place)
            }
            .navigationBarTitle("Places")
        }
    }
}
struct PlaceList_Previews: PreviewProvider {
    static var previews: some View {
        PlaceList()
    }
}
