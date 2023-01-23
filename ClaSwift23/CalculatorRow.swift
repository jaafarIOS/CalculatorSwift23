//
//  CalculatorRow.swift
//  ClaSwift23
//
//  Created by Consultant on 1/22/23.
//

import Foundation
class CalculatorRow: Identifiable {
    
    var items = [CalculatorItem]()
    let id: Int
    init(id: Int){
        self.id = id
    }
    func add( item: CalculatorItem) {
        items.append(item)
    }

}
