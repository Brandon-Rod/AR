//
//  BrowseView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/4/22.
//

import SwiftUI

struct BrowseView: View {
        
    @Binding var showBrowse: Bool
            
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                RecentsGridView(showBrowse: $showBrowse)
                
                ModelsByCategoryGridView(showBrowse: $showBrowse)
                
            }
            .navigationBarTitle("Browse", displayMode: .large)
            .navigationBarItems(trailing: Button(action: { showBrowse.toggle() }, label: { Text("Done").foregroundColor(.red)}))
            
        }
        
    }
    
}

