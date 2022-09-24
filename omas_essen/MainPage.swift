//
//  ContentView.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        TabView {
            ShareFood()
                .tabItem {
                    Label("Share", systemImage: "shared.with.you")
                }
            GetFood()
                .tabItem {
                    Label("Get", systemImage: "kdfjlk")
                }
            Text("Settigs View")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MainPage()
        }
    }
}
