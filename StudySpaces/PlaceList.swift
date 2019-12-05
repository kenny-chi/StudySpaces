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
                        NavigationLink(destination: PlaceDetail(place: place)){
                            PlaceRow(place: place)
                            Spacer()
                            Group {
                                if place.capacity > 0 && place.capacity < 10 {
                                    Image(systemName: "circle.fill")
                                        .foregroundColor(Color.yellow)
                                    
                                }
                                else if place.capacity > 0{
                                    Image(systemName: "circle.fill")
                                    .foregroundColor(Color.green)
                                }
                                else {
                                    Image(systemName: "circle.fill")
                                    .foregroundColor(Color.red)
                                }
                            }
                        }
                        
                    }
                 .navigationBarTitle("Places")
                    .offset(x: 2)
                
                    
            }
           
        }
}
struct PlaceList_Previews: PreviewProvider {
    static var previews: some View {
        PlaceList()
    }
}
