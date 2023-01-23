//
//  ThemeClolor.swift
//  ClaSwift23
//
//  Created by Consultant on 1/22/23.
//

import SwiftUI
enum ThemeColor {
   case tangerine
   case midnight
   case limestone
   case aluminum
}
extension ThemeColor {
    var color: Color{
        switch self{
        case .tangerine:
            return Color("tangerine")
        
        case .midnight:
            return Color("midnight")
        
        case .limestone:
            return Color("limestone")
        case .aluminum:
            return Color("aluminum")
        
            
        }
    }
}
