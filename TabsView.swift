import SwiftUI

// #1 Rename ContentView to TabsView
struct TabsView: View {
    
    // #3
    let tabBar = UITabBar.appearance()
    
    // init() is a method provided by View that invoked when the page is loaded.
    init() {
        tabBar.backgroundColor = UIColor.lightGray;
        tabBar.unselectedItemTintColor = UIColor.white;
    }
    
    var body: some View {
        // #2
        TabView {
            AboutMePage()
                .tabItem {
                    Label("About", systemImage: "person.wave.2")
                }
            HobbiesPage()
                .tabItem {
                    Label("Hobbies", systemImage: "list.bullet")
                }
            InfoPage()
                .tabItem {
                    Label("Info", systemImage: "square.and.pencil")
                }
        }
    }
}
