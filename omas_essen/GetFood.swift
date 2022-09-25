//
//  GetFood.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI
import MapKit

struct Food: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct GetFood: View {
    
    @State private var isPin: Bool = false
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 52.493956, longitude: 13.446101), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    let annotations = [
        Food(name: "Steffi", coordinate: CLLocationCoordinate2D(latitude: 52.49386, longitude:13.44613))
    ]
    var body: some View {
        ZStack{
            Color("SecondaryColor")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image("omasessenicon")
                    Image("omasessentitle")
                        .resizable()
                        .frame(width: 200, height: 60)
                }
                Text("Get some food:")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Map(coordinateRegion: $region, annotationItems: annotations){
                    MapAnnotation(coordinate: $0.coordinate){
                        Button {
                            isPin = true
                        } label: {
                            Image(systemName: "mappin.circle.fill")
                        }
                        .font(.system(size: 30))
                        .background(Color("MainColor"))
                        .foregroundColor(.black)
                        .clipShape(Circle())
                        
                    }
                    
                    
                }
            }
            
            .sheet(isPresented: $isPin){
                PinView()
            }
            
        }
    }
}

struct GetFood_Previews: PreviewProvider {
    static var previews: some View {
        GetFood()
    }
}
