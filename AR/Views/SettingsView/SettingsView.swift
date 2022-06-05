//
//  SettingsView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var showSettings: Bool
    
    var body: some View {
        
        NavigationView {
            
            SettingsGridView()
                .navigationBarTitle("Settings", displayMode: .inline)
                .navigationBarItems(trailing: Button(action: { showSettings.toggle() }, label: {
                    
                    Text("Done")
                        .foregroundColor(.red)
                    
                }))
            
        }
        
    }
    
}
