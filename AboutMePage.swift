import SwiftUI

struct AboutMePage: View {
    
    // #5
    var aboutText = "This is some about text, about me. his is some about text, about me. his is some about text, about me. his is some about text, about me. his is some about text, about me.";
    
    // #6
    @State var showAlert = false;
    
    // #7
    func viewAlert() {
        // Can use .toggle on Boolean values.
        showAlert.toggle()
    }
    
    var body: some View {
        
        // #1
        VStack(alignment: .center, spacing: 40) {
            
            // #2
            Text("About Me")
                .font(.system(size: 40))
                .padding()
                .foregroundColor(.green)
            
            // #3
            Image("linkedinpropic")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            
            // #4
            Text(aboutText)
                .frame(width: 300)
                .font(.system(size: 21))
            
            // #5
            Button("View Fun Fact", action: viewAlert)
                .tint(.green)
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                .controlSize(.large)
            // #7
        }.alert( Text("Started programming in 2010, when he studied Meteorology at CMU"), isPresented: $showAlert ) {
            Button("Close") {
                print("Closing Fun Fact Alert")
            }
        }
    }
}
