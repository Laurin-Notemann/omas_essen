//
//  Settings.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI

struct Settings: View {
    
    @State public var name: String = "" 
    @State public var phonenumber: String = ""
    @State public var summary: String = ""
    
    var body: some View {
        ZStack{
            Color("SecondaryColor")
                .ignoresSafeArea()
            VStack(spacing: 20){
                HStack{
                    Image("omasessenicon")
                    Image("omasessentitle")
                        .resizable()
                        .frame(width: 200, height: 60)
                }
                Spacer()
                Text("Here you can change your data")
                    .font(.system(size: 30))
                VStack(alignment: .center, spacing: 35) {

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
                    Button("Update") {
                        UserDefaults.standard.set(name, forKey: "person_name")
                        UserDefaults.standard.set(phonenumber, forKey: "phone_number")
                        UserDefaults.standard.set(summary, forKey: "summary")
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.white)
                    .background(Color("MainColor"))
                    .cornerRadius(20)
                    .font(.largeTitle)
                    .shadow(radius: 4)
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
