
import SwiftUI

struct CategoryHome: View {
    var body: some View {
        VStack {
            Image("RW7991")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            //.offset()
            //.padding(.bottom)
            Group {
                Text("StudySpaces")
                    .font(.title)
                    //.foregroundColor(Color(red: 0.2, green: 0.3, blue: 0.7, opacity: 1.0))
                    .underline()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("at UC Berkeley")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .offset(y:-180)
            PlaceList()
        }
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
