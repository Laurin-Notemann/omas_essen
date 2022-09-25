//
//  LoginPage.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI



struct LoginPage: View {
    
    @State private var logedIn: Bool = false
    
    @State public var name: String = ""
    @State public var phonenumber: String = ""
    @State public var summary: String = ""
    
    var body: some View {
        if logedIn {
            MainPage()
        } else {
            ZStack{
                Color("SecondaryColor")
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 20) {
                    HStack{
                        Image("omasessenicon")
                        Image("omasessentitle")
                            .resizable()
                            .frame(width: 200, height: 65)
                    }
                    Spacer()
                    Text("Login:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 60)
                    TextField(
                        "Enter your full name",
                        text: $name
                    )
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .multilineTextAlignment(.center)
                        .shadow(radius: 4)
                    
                    TextField(
                        "Enter your mobile number",
                        text: $phonenumber
                    )
                    .padding()
                    .background(.white)
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)
                    .shadow(radius: 4)
                    
                    TextField(
                        "Tell something about yourself",
                        text: $summary
                    )
                    .padding()
                    .background(.white)
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)
                    .shadow(radius: 4)
                    Button("Login") {
                        UserDefaults.standard.set(name, forKey: "person_name")
                        UserDefaults.standard.set(phonenumber, forKey: "phone_number")
                        UserDefaults.standard.set(summary, forKey: "summary")
                        logedIn = true
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.white)
                    .background(Color("MainColor"))
                    .cornerRadius(20)
                    .font(.largeTitle)
                    .shadow(radius: 4)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
