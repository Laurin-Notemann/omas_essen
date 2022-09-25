//
//  ShareFood.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI
import MapKit

struct ShareFood: View {
    
    @State private var description: String = ""
    @State private var showCamera: Bool = false
    
    var body: some View {
        ZStack{
            Color("SecondaryColor")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image("omasessenicon")
                    Image("omasessentitle")
                        .resizable()
                        .frame(width: 200, height: 65)
                }
                Spacer()
                Text("Share your")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("food here:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextField(
                    "What food did you cook",
                    text: $description
                )
                .padding()
                .background(.white)
                .cornerRadius(20)
                .multilineTextAlignment(.center)
                .shadow(radius: 4)
                Spacer()
                Button {
                    showCamera = true
                } label: {
                    Image(systemName: "camera")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color("MainColor"))
                        .cornerRadius(12)
                }
                
                .buttonStyle(.plain)
                Spacer()
            }
            .padding()
            
            .sheet(isPresented: $showCamera) {
                CameraView()
            }
        }
    }
}

struct ShareFood_Previews: PreviewProvider {
    static var previews: some View {
        ShareFood()
    }
}
