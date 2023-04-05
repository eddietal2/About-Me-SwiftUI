import SwiftUI

// #5
struct ListItemView: View {
    var name: String;
    var body: some View {
        HStack() {
            Image(systemName: "flame")
            Text(name)
        }
    }
}

struct HobbiesPage: View {
    var body: some View {
        
        // #1
        VStack(alignment: .center) {
            
            // #3
            Spacer(minLength: 25)
            
            // #2
            Text("Hobbies")
                .font(.system(size: 40))
                .padding()
            
            // #4
            List() {
                
                // #6
                ListItemView(name: "Build my Business, Final Boss Studios.")
                ListItemView(name: "Longboarding")
                ListItemView(name: "Eating / Sleeping")
            }
        }
    }
}
