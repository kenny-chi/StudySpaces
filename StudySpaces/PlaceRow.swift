//
//  PlaceRow.swift
//  StudySpaces
//
//  Created by Kenny Chi on 11/21/19.
//  Copyright © 2019 Kenny Chi. All rights reserved.
//

import SwiftUI

struct PlaceRow: View {
   var place: Place
    
    var body: some View {
        HStack{
            place.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(verbatim: place.name)
                
        }
    }
}

struct PlaceRow_Previews: PreviewProvider {
    static var previews: some View {
        PlaceRow(place: placeData[0])
    }
}
