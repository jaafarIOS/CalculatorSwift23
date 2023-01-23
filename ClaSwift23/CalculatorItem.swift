//
//  CalclueatorItem.swift
//  ClaSwift23
//
//  Created by Consultant on 1/22/23.
//

import Foundation
enum CalculatorItemandCategory{
    case whole
    case half
    case quarter
}
class CalculatorItem: Identifiable {
    var id: Int

    var widthCategory: CalculatorItemandCategory
    var themeColor: ThemeColor
    init( id: Int, widthCategory: CalculatorItemandCategory, themeColor: ThemeColor) {
        self.id = id
        self.widthCategory = widthCategory
        self.themeColor = themeColor
        
    }
}
