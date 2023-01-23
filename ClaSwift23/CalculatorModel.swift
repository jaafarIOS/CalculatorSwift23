//
//  CalculatorModel.swift
//  ClaSwift23
//
//  Created by Consultant on 1/22/23.
//

import Foundation
struct CalculatorModel {
    enum Operator {
        case division
        case sub
        case addition
        case multi
    }
    
    var rows = [CalculatorRow]()
    var text = "0"
    private var stordText: String?
    private var storedOpertor: Operator?
    private var nextNumberShouldClearDisplay = false
    
    init() {

    
    }
    private mutating func setText(double: Double){
        text = "\(double)"
    }
    private mutating func applyStoredOperator(){
        
        if let _operator = storedOpertor, let _storedText = stordText {
            let number1 = Double(_storedText) ?? 0.0
            let number2 = Double(text) ?? 0.0
            
            switch _operator {
             case .division:
                if abs(number2) < 0.00001 {
                    text = "Illiegal"
                    
                } else {
                    let result = number1 / number2
                    setText(double: result)
                }
            case .sub:
                    let result = number1 - number2
                    setText(double: result)
             
            case .addition:
                    let result = number1 + number2
                    setText(double: result)
             
            case .multi:
                    let result = number1 * number2
                    setText(double: result)
                }
            }
        storedOpertor = nil
        stordText = nil
        nextNumberShouldClearDisplay = true
    }
    mutating func equals(){
        applyStoredOperator()
    }
    mutating func plusMinus() {
        if let number = Double(text) {
            setText(double: -number )
        }
    }
    mutating func percentage() {
        if let number = Double(text) {
            setText(double: number  * 0.01)
        }
    }
    mutating func appendOperator (_ oper: Operator) {
        applyStoredOperator()
        nextNumberShouldClearDisplay = true
        stordText = text
        storedOpertor = oper
    }
    
   mutating func add( row: CalculatorRow){
        rows.append(row)
    }
    mutating func appendNumber( number: String){
        if nextNumberShouldClearDisplay {
            nextNumberShouldClearDisplay = false
            text = "0"
        }
        if text == "0" || (Double(text)) == nil{
            text = number
        } else {
            text = text + number
        }
    }
    mutating func addDecimal(){
        for letter in text {
            if letter == "." {return}
        }
        text += "."
        
    }
    mutating func clear(){
        text = "0"
    }
}
