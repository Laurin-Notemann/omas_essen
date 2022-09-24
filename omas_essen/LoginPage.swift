//
//  LoginPage.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI

struct LoginPage: View {
    
    @State private var logedIn: Bool = false
    
    @State private var name: String = ""
    @State private var phonenumber: String = ""
    @State private var summary: String = ""
    
    var body: some View {
        if logedIn {
            MainPage()
        } else {
            VStack(alignment: .center) {
                Text("Login:")
                TextField(
                    "Enter your full name",
                    text: $name
                )
                .padding()
                .textFieldStyle(.roundedBorder)
                TextField(
                    "Enter your mobile number",
                    text: $phonenumber
                )
                .textFieldStyle(.roundedBorder)
                .padding()
                //.border(.background)
                TextField(
                    "Tell something about yourself",
                    text: $summary
                )
                .padding()
                .textFieldStyle(.roundedBorder)
                Button("Login") {
                    logedIn = true
                }
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
