//
//  ModelsByCategoryGridView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct ModelsByCategoryGridView: View {
    
    @Binding var showBrowse: Bool
    
    let models = Models()
    
    var body: some View {
        
        VStack {
            
            ForEach(ModelCategory.allCases, id: \.self) { category in
                
                if let modelsByCategory = models.get(category: category) {
                    
                    HorizontalGridView(showBrowse: $showBrowse, title: category.label, items: modelsByCategory)
                    
                }
                
            }
            
        }
        
    }
    
}
