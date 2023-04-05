import SwiftUI

struct InfoPage: View {
    
    // #1
    @State var firstName: String = "";
    @State var lastName: String = "";
    @State var email: String = "";
    
    var body: some View {
        
        // #2
        VStack(alignment: .center) {
            
            // #6
            Spacer(minLength: 25)
            
            // #3
            Text("Info Form")
                .font(.system(size: 40))
                .padding()
            
            // #4
            VStack(alignment: .leading) {
                Text("Hi, " + $firstName.wrappedValue)
                    .font(.system(size: 40))
                    .padding();
                Text("Your last name is: " + $lastName.wrappedValue)
                    .padding();
                Text("Is " + $email.wrappedValue + " your email?")
                    .padding()
            } // Add modifiers first
            .frame(maxWidth: .infinity, alignment: .leading)
            .border(Color.pink)
            .background(.indigo)
            .cornerRadius(10)
            .padding()
            
            // #5
            Form {
                
                TextField( text: $firstName) {
                    Text("First Name:")
                }
                TextField( text: $lastName) {
                    Text("Last Name:")
                } 
                TextField(text: $email) {
                    Text("Email:")
                }
                
            }
            
            // #7
            VStack() {
                
                Button("Clear Form") {
                    firstName = "";
                    lastName = "";
                    email = "";
                }
                .frame(width: .infinity, alignment: .center)
                .tint(.red)
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                .controlSize(.large)
                .offset(y: -200)
            }
            
        }
    }
}
