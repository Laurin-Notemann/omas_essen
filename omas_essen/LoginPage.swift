//
//  LoginPage.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI

struct LoginPage: View {
    @State private var name: String = ""
    @State private var phonenumber: String = ""
    @State private var summary: String = ""
    var body: some View {
        VStack(alignment: .center){
            Text("Login:")
            TextField(
                    "Enter your full name",
                    text: $name
            )
            .border(.secondary)
            TextField(
                "Enter your mobile number",
                text: $phonenumber
            )
            TextField(
                "Tell something about yourself",
                text: $summary
            )
        }
        
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
