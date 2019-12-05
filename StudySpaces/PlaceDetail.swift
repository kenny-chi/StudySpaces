//
//  PlaceDetail.swift
//  StudySpaces
//
//  Created by Kenny Chi on 11/24/19.
//  Copyright © 2019 Kenny Chi. All rights reserved.
//

import SwiftUI
struct PlaceDetail: View {
    var place: Place
    var body: some View {
        VStack{
            VStack(){
                Text(place.name)
                    .font(.title)
                    .offset()
                CircleImage(image: place.image)
                HStack(alignment: .center) {
                    Text("Spaces Left:")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text(String(place.capacity))
                        .font(.subheadline)
                    Spacer()
                    if place.capacity > 0 {
                        Image(systemName: "circle.fill")
                            .foregroundColor(Color.green)
                    } else {
                        Image(systemName: "circle.fill")
                        .foregroundColor(Color.red)
                    }
                    
                }
                .padding(.horizontal)
                .padding(.top, 50)
            }
                
            .offset(y: -150)
            
            
        }
    }
}
struct PlaceDetail_Preview: PreviewProvider {
    static var previews: some View {
        PlaceDetail(place: placeData[0])
    }
}
