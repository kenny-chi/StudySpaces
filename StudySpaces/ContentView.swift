
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            /*Image("RW7991")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 20)
            .offset(y: -200)
            .padding(.bottom, -200)*/
            Group {
                Text("StudySpaces")
                    .font(.title)
                Text("at UC Berkeley")
                    .font(.subheadline)
            }
            .foregroundColor(.black)
            .offset(y:-180)
            
            
            
            
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
