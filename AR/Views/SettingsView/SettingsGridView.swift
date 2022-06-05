//
//  SettingsGridView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct SettingsGridView: View {
    
    @EnvironmentObject var sessionSettings: SessionSettings
    
    private let gridItemLayout = [GridItem(.adaptive(minimum: 100, maximum: 100), spacing: 25)]
    
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: gridItemLayout, spacing: 25) {
                
                SettingsToggleButton(isOn: $sessionSettings.isPeopleOcclusionEnabled, settings: .peopleOcclusion)
                
                SettingsToggleButton(isOn: $sessionSettings.isObjectOcclusionEnabled, settings: .objectOcclusion)
                
                SettingsToggleButton(isOn: $sessionSettings.isLidarDebugEnabled, settings: .lidarDebug)
                                
            }
            
        }
        .padding(.top, 25)
        
    }
    
}
