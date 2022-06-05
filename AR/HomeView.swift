//
//  ContentView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/4/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var placementSettings: PlacementSettings
    
    @State private var isControlVisible = true
    @State private var showBrowse = false
    @State private var showSettings = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            ARViewRepresentable()
            
            if placementSettings.selectedModel == nil {
                
                ControlView(isControlVisible: $isControlVisible, showBrowse: $showBrowse, showSettings: $showSettings)
                
            } else {
                
                PlacementView()
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
