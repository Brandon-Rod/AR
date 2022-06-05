//
//  PlacementSettings.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI
import RealityKit
import Combine

final class PlacementSettings: ObservableObject {
    
    @Published var selectedModel: ARModel? {
        
        willSet(newValue) {
            
            print("Setting selectedModel to \(String(describing: newValue?.name))")
            
        }
        
    }
    
    @Published var confirmedModel: ARModel? {
        
        willSet {
            
            guard let model = newValue else {
                
                print("Clearing confirmedModel")
                return
                
            }
            
            print("Setting confirmed to \(model.name)")
            
            recentlyPlaced.append(model)
            
        }
        
    }
    
    @Published var recentlyPlaced: [ARModel] = []
    
    var sceneObserver: Cancellable?
    
}
