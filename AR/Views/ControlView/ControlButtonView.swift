//
//  ControlButton.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct ControlButtonView: View {
    
    let name: String
    let action: () ->Void
    
    var body: some View {
        
        Button { withAnimation(.easeInOut) { action() } } label: {
            
            Image(systemName: name)
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
                .frame(width: 45, height: 45)
            
        }
        
    }
    
}
