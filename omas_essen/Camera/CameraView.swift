//
//  CameraView.swift
//  omas_essen
//
//  Created by Laurin Notemann on 24.09.22.
//

import SwiftUI

import SwiftUI

struct CameraView: View {
    @StateObject private var handler = CameraFrameHandler()
    
    var body: some View {
        CameraFrameView(image: handler.frame)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}

