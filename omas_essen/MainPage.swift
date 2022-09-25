//
//  ContentView.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        ZStack{
            Color("SecondaryColor")
                .ignoresSafeArea()
            TabView {
                ShareFood()
                    .tabItem {
                        Label("Share", systemImage: "shared.with.you")
                    }
                
                GetFood()
                    .tabItem {
                        Label("Get", systemImage: "takeoutbag.and.cup.and.straw")
                    }
                Settings()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                
            }
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainPage()
        }
    }
}
