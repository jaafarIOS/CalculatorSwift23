//
//  CalculatorButton.swift
//  ClaSwift23
//
//  Created by Consultant on 1/22/23.
//

import Foundation
class CalculatorButton : CalculatorItem {
    var bouttonText: String
    var bouttonAction: () -> Void
        init( id: Int, widthCategory: CalculatorItemandCategory, themeColor: ThemeColor, bouttonText: String, bouttonAction: @escaping () -> Void ) {
            self.bouttonText = bouttonText
            self.bouttonAction = bouttonAction
            super.init(id: id, widthCategory: widthCategory, themeColor: themeColor)
    }

}
