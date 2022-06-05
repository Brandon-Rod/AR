//
//  ARModel.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/4/22.
//

import SwiftUI
import RealityKit
import Combine

enum ModelCategory: CaseIterable  {
        
    case kitchen, livingRoom, toys, garden
    
    var label: String {
        
        get {
            
            switch self {
            case .kitchen:
                return "Kitchen"
                
            case .livingRoom:
                return "Living Room"
                
            case .toys:
                return "Toys"
                
            case .garden:
                return "Garden"
                
            }
            
        }
        
    }
    
}

class ARModel {
    
    var name: String
    var category: ModelCategory
    var thumbnail: Image
    var modelEntity: ModelEntity?
    var scaleCompensation: Float
    
    private var cancellable: AnyCancellable?
    
    init(name: String, category: ModelCategory, scaleCompensation: Float = 1.0) {
        
        self.name = name
        self.category = category
        self.thumbnail = Image(name)
        self.scaleCompensation = scaleCompensation
        
    }
    
    func loadModelEntity() {
        
        let fileName = self.name + ".usdz"
        
        self.cancellable = ModelEntity.loadModelAsync(named: fileName)
            .sink(receiveCompletion: { loadCompletion in
                
                switch loadCompletion{
                    
                case .failure(let error):
                    print("Unable to load entity for \(fileName). Error: \(error.localizedDescription)")
                    
                case .finished:
                    break
                    
                }
                
            }, receiveValue: { modelEntity in
                
                self.modelEntity = modelEntity
                self.modelEntity?.scale *= self.scaleCompensation
                                
            })
        
    }
    
}

struct Models {
    
    var arModels: [ARModel] = []
    
    init() {
        
//        Table
        let chair = ARModel(name: "chair_swan", category: .kitchen, scaleCompensation: 32/100)
        let cup = ARModel(name: "cup_saucer_set", category: .kitchen, scaleCompensation: 32/100)
        let teaPot = ARModel(name: "teapot", category: .kitchen, scaleCompensation: 32/100)
        
        self.arModels += [chair, cup, teaPot]
        
//        Living Room
        let gramophone = ARModel(name: "gramophone", category: .livingRoom, scaleCompensation: 32/100)
        let tv = ARModel(name: "tv_retro", category: .livingRoom, scaleCompensation: 32/100)
        let fender = ARModel(name: "fender_stratocaster", category: .livingRoom, scaleCompensation: 32/100)
        
        self.arModels += [gramophone, tv, fender]
        
//        Toys
        let biPlane = ARModel(name: "toy_biplane", category: .toys, scaleCompensation: 32/100)
        let car = ARModel(name: "toy_car", category: .toys, scaleCompensation: 32/100)
        let robot =  ARModel(name: "toy_robot_vintage", category: .toys, scaleCompensation: 32/100)
        let drummer =  ARModel(name: "toy_drummer", category: .toys, scaleCompensation: 45/100)
        
        self.arModels += [biPlane, car, robot, drummer]
        
//        Garden
        let flower = ARModel(name: "flower_tulip", category: .garden, scaleCompensation: 32/100)
        let wateringCan = ARModel(name: "wateringcan", category: .garden, scaleCompensation: 32/100)
        
        self.arModels += [flower, wateringCan]
        
    }
    
    func get(category: ModelCategory) -> [ARModel] {
        
        return arModels.filter( { $0.category == category })
        
    }
    
}
