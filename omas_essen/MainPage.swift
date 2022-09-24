//
//  ContentView.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        VStack {
            HStack{
                Text("Omas")
                    .bold()
                    .font(.largeTitle)
                Text("Essen")
                    .bold()
                    .font(.largeTitle)
                    .padding(-7)
            }
            
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
