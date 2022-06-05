//
//  MostRecentlyPlacedView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct MostRecentlyPlacedView: View {
    
    @EnvironmentObject var placementSettings: PlacementSettings
    
    var body: some View {
        
        Button {
            
            withAnimation(.easeInOut) { placementSettings.selectedModel = placementSettings.recentlyPlaced.last }
            
        } label: {
            
            if let mostRecentlyPlacedModel = placementSettings.recentlyPlaced.last {
                
                mostRecentlyPlacedModel.thumbnail
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
                    .aspectRatio(1/1, contentMode: .fit)
                    .cornerRadius(10)
                
            } else {
                
                Image(systemName: "clock.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
                .frame(width: 45, height: 45)
                
            }
            
        }
        
    }
    
}
