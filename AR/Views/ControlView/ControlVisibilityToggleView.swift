//
//  ControlVisibilityToggle.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct ControlVisibilityToggleView: View {
    
    @Binding var isControlVisible: Bool
    
    var body: some View {
        
        HStack {
            
            Spacer()
            
            Button { withAnimation(.easeInOut) { isControlVisible.toggle() } } label: {
                
                Image(systemName: isControlVisible ? "rectangle" : "slider.horizontal.below.rectangle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.red)
                    .frame(width: 35, height: 35)
                    .padding(15)
                    .background(.thinMaterial)
                    .cornerRadius(15)
                
            }
            
        }
        .animation(.easeInOut, value: isControlVisible)
        .padding(.vertical, 50)
        .padding(.horizontal)
        
    }
    
}
