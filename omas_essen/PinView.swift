//
//  PinView.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI

struct PinView: View {
    
    private var name: String = UserDefaults.standard.string(forKey: "person_name") ?? "missing name"
    private var phone: String = UserDefaults.standard.string(forKey: "phone_number") ?? "missing number"
    private var summary: String = UserDefaults.standard.string(forKey: "summary") ?? "missing summary"
    var body: some View {
        ZStack{
            Color("SecondaryColor")
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 15){
                Spacer()
                Text("About Me:")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                Text("Name: \(name)")
                    .font(.system(size: 20))
                    .underline()
                Text("Number: \(phone)")
                    .font(.system(size: 20))
                    .underline()
                Text(summary)
                    .font(.system(size: 20))
                    .padding(.top)
                    .padding(.bottom)
                Text("About the Dish:")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                Text("Spaghetti Bolognese")
                    .font(.system(size: 20))
                    .padding(.top)
                    .padding(.bottom)
                Image("spagehtti")
                    .resizable()
                    .frame(width: 240, height: 200)
                    .cornerRadius(10)
                Spacer()
            }
        }
    }
}

struct PinView_Previews: PreviewProvider {
    static var previews: some View {
        PinView()
    }
}
