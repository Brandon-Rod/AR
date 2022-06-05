//
//  View+ext.swift
//  AR
//
//  Created by Brandon Rodriguez on 6/5/22.
//

import SwiftUI

extension View {
    
    @ViewBuilder func hidden(_ shouldHide: Bool) -> some View {
        
        switch shouldHide  {
            
        case true: self.hidden()
        case false: self
            
        }
        
    }
    
}
