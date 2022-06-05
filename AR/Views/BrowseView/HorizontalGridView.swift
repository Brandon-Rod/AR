//
//  HorizontalGridView.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

struct HorizontalGridView: View {
    
    @EnvironmentObject var  placementSettings: PlacementSettings
    
    @Binding var showBrowse: Bool
    
    private let gridItemLayout = [GridItem(.fixed(150))]
    
    var title: String
    var items: [ARModel]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            SeparatorView()
            
            Text(title)
                .font(.title3)
                .bold()
                .padding(.top)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false)  {
                
                LazyHGrid(rows: gridItemLayout, spacing: 30) {
                    
                    ForEach(0..<items.count, id: \.self) { index in
                        
                        let model = items[index]
                        
                        ItemButtonView(model: model) {
                            
                            model.loadModelEntity()
                            placementSettings.selectedModel = model
                            
                            showBrowse = false
                            
                        }
                        
                    }
                    
                }
                .padding()
                
            }
            
        }
        
    }
    
}
