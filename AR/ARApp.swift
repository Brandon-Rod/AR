//
//  ARApp.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/4/22.
//

import SwiftUI

@main
struct ARApp: App {
    
    @StateObject var placementSettings = PlacementSettings()
    @StateObject var sessionSettings = SessionSettings()
    
    var body: some Scene {
        
        WindowGroup {
            
            HomeView()
                .environmentObject(placementSettings)
                .environmentObject(sessionSettings)
            
        }
        
    }
    
}
