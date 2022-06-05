//
//  ControlView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/4/22.
//

import SwiftUI

struct ControlView: View {
    
    @Binding var isControlVisible: Bool
    @Binding var showBrowse: Bool
    @Binding var showSettings: Bool
    
    var body: some View {
        
        VStack {
            
            ControlVisibilityToggleView(isControlVisible: $isControlVisible)
            
            Spacer()
            
            if isControlVisible { ControlButtonBar(showBrowse: $showBrowse, showSettings: $showSettings) }
            
        }
        
    }
    
}
