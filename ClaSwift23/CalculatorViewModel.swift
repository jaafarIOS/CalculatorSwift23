//
//  ViewModel.swift
//  ClaSwift23
//
//  Created by Consultant on 1/22/23.
//

import Foundation

class CalculatorViewModel : ObservableObject {
    @Published var calculator = CalculatorModel()
    
    init() {
        let row1 = CalculatorRow(id: 0)
        row1.add(item: CalculatorDisplay(id: 0, widthCategory: .whole, themeColor: .aluminum))
        calculator.add(row: row1)
        
        
        let row2 = CalculatorRow(id: 1)
        calculator.add(row: row2)
        row2.add(item: CalculatorButton(id: 1, widthCategory: .quarter, themeColor: .aluminum, bouttonText: "A/C", bouttonAction: {  [weak self] in self?.calculator.clear()
            
        }))
        row2.add(item: CalculatorButton(id: 2, widthCategory: .quarter, themeColor: .aluminum, bouttonText: "+/-", bouttonAction: { [weak self] in self?.calculator.plusMinus()
            
        }))
        row2.add(item: CalculatorButton(id: 3, widthCategory: .quarter, themeColor: .aluminum, bouttonText: "%", bouttonAction: { [weak self] in self?.calculator.percentage()
            
        }))
        row2.add(item: CalculatorButton(id: 4, widthCategory: .quarter, themeColor: .tangerine, bouttonText: "/", bouttonAction: { [weak self] in self?.calculator.appendOperator(.division)
            
        }))
        
        let row3 = CalculatorRow(id: 2)
        calculator.add(row: row3)
        row3.add(item: CalculatorButton(id: 0, widthCategory: .quarter, themeColor: .limestone, bouttonText: "7", bouttonAction: { [weak self] in self?.calculator.appendNumber(number: "7")
            
        }))
        row3.add(item: CalculatorButton(id: 1, widthCategory: .quarter, themeColor: .limestone, bouttonText: "8", bouttonAction: {[weak self] in self?.calculator.appendNumber(number: "8")
            
        }))
        row3.add(item: CalculatorButton(id: 2, widthCategory: .quarter, themeColor: .limestone, bouttonText: "9", bouttonAction: { [weak self] in self?.calculator.appendNumber(number: "9")
            
        }))
        row3.add(item: CalculatorButton(id: 3, widthCategory: .quarter, themeColor: .tangerine, bouttonText: "X", bouttonAction: { [weak self] in self?.calculator.appendOperator(.multi)
            
        }))
        let row4 = CalculatorRow(id: 3)
        calculator.add(row: row4)
        row4.add(item: CalculatorButton(id: 0, widthCategory: .quarter, themeColor: .limestone, bouttonText: "4", bouttonAction: { [weak self] in self?.calculator.appendNumber(number: "4")
            
        }))
        row4.add(item: CalculatorButton(id: 1, widthCategory: .quarter, themeColor: .limestone, bouttonText: "5", bouttonAction: { [weak self] in self?.calculator.appendNumber(number: "5")
            
        }))
        row4.add(item: CalculatorButton(id: 2, widthCategory: .quarter, themeColor: .limestone, bouttonText: "6", bouttonAction: { [weak self] in self?.calculator.appendNumber(number: "6")
            
        }))
        row4.add(item: CalculatorButton(id: 3, widthCategory: .quarter, themeColor: .tangerine, bouttonText: "-", bouttonAction: { [weak self] in self?.calculator.appendOperator(.sub)
            
        }))
        let row5 = CalculatorRow(id: 4)
        calculator.add(row: row5)
        row5.add(item: CalculatorButton(id: 0, widthCategory: .quarter, themeColor: .limestone, bouttonText: "1", bouttonAction: { [weak self] in self?.calculator.appendNumber(number: "1")
            
        }))
        row5.add(item: CalculatorButton(id: 1, widthCategory: .quarter, themeColor: .limestone, bouttonText: "2", bouttonAction: { [weak self] in self?.calculator.appendNumber(number: "2")
            
        }))
        row5.add(item: CalculatorButton(id: 2, widthCategory: .quarter, themeColor: .limestone, bouttonText: "3", bouttonAction: {[weak self] in self?.calculator.appendNumber(number: "3")
            
        }))
        row5.add(item: CalculatorButton(id: 3, widthCategory: .quarter, themeColor: .tangerine, bouttonText: "+", bouttonAction: { [weak self] in self?.calculator.appendOperator(.addition)
            
        }))
        let row6 = CalculatorRow(id: 5)
        calculator.add(row: row6)
        row6.add(item: CalculatorButton(id: 0, widthCategory: .half, themeColor: .limestone, bouttonText: "0", bouttonAction: { [weak self] in self?.calculator.appendNumber(number: "0")
            
        }))
        row6.add(item: CalculatorButton(id: 1, widthCategory: .quarter, themeColor: .limestone, bouttonText: ".", bouttonAction: { [weak self] in self?.calculator.addDecimal()
            
        }))
        row6.add(item: CalculatorButton(id: 2, widthCategory: .quarter, themeColor: .tangerine, bouttonText: "=", bouttonAction: { [weak self] in self?.calculator.equals()
            
        }))
      

        
    }
}
