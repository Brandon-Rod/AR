//
//  SessionSettings.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

final class SessionSettings: ObservableObject {
    
    @Published var isPeopleOcclusionEnabled: Bool = false
    @Published var isObjectOcclusionEnabled: Bool = false
    @Published var isLidarDebugEnabled: Bool = false
    @Published var isMultiUserEnabled: Bool = false
    
}
