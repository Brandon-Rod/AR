//
//  PlacementView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct PlacementView: View {
    
    @EnvironmentObject var placementSettings: PlacementSettings
    
    var body: some View {
        
        HStack {
            
            Spacer()
            
            PlacementButton(systemIconName: "xmark.circle.fill") {
                
                placementSettings.selectedModel = nil
                
            }
            
            Spacer()
            
            PlacementButton(systemIconName: "checkmark.circle.fill") {
                
                placementSettings.confirmedModel = placementSettings.selectedModel
                placementSettings.selectedModel  = nil
                
            }
            
            Spacer()
            
        }
        .padding(30)
        
    }
    
}

struct PlacementButton: View {
    
    let systemIconName: String
    let action: () -> Void
    
    var body: some View {
        
        Button { withAnimation(.easeInOut) { action() } } label: {
            
            Image(systemName: systemIconName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
                .frame(width: 50, height: 50)
            
        }
        .frame(width: 75, height: 75)
        
    }
    
}
