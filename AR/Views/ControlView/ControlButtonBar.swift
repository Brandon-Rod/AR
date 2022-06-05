//
//  ControlButtonBar.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct ControlButtonBar: View {
    
    @EnvironmentObject var placementSettings: PlacementSettings
    
    @Binding var showBrowse: Bool
    @Binding var showSettings: Bool
    
    var body: some View {
        
        HStack {
            
            MostRecentlyPlacedView().hidden(placementSettings.recentlyPlaced.isEmpty)

            Spacer()
            
            ControlButtonView(name: "square.grid.2x2") {
                
                showBrowse = true
                
            }
            .sheet(isPresented: $showBrowse) { BrowseView(showBrowse: $showBrowse) }
            
            Spacer()
            
            ControlButtonView(name: "slider.horizontal.3") {
                
                showSettings.toggle()
                
            }
            .sheet(isPresented: $showSettings) { SettingsView(showSettings: $showSettings) }
            
        }
        .frame(maxWidth: .infinity)
        .padding(30)
        .padding(.bottom, 10)
        .background(.thinMaterial)
        .cornerRadius(30)
    }
    
}
