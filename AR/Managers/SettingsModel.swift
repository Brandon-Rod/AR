//
//  Settings.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

enum SettingsModel {
    
    case peopleOcclusion, objectOcclusion, lidarDebug, multiUser
    
    var label: String {
        
        switch self {
        case .peopleOcclusion, .objectOcclusion:
            return "Occlusion"
            
        case .lidarDebug:
            return "LiDar"
            
        case .multiUser:
            return "Multiuser"
            
        }
        
    }
    
    var systemIconName: String {
        
        get {
            
            switch self {
            case .peopleOcclusion:
                return "person"
                
            case .objectOcclusion:
                return "cube.box.fill"
                
            case .lidarDebug:
                return "light.min"
                
            case .multiUser:
                return "person.2"
                
            }
            
        }
        
    }
    
}
