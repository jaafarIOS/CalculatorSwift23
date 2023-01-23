//
//  ContentView.swift
//  ClaSwift23
//
//  Created by Consultant on 1/22/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = CalculatorViewModel()
    var body: some View {
        ZStack{
            VStack {
            GeometryReader {
                geometry in
                VStack(spacing: 12.0) {
                    
                    ForEach ( viewModel.calculator.rows) { row in
                        calculatorRowView(row: row, spacing: 12.0, geometry: geometry)
                        
                    }
                    
                }
            }
        }.padding()
            
        }.background(Color("midnight"))
        
    }
    func calculatorRowView(row: CalculatorRow, spacing: CGFloat,
                           geometry: GeometryProxy) -> some View {
        var rowHeight = geometry.size.height
        if viewModel.calculator.rows.count > 1 {
            rowHeight -= CGFloat(viewModel.calculator.rows.count - 1) * spacing
        }
        if viewModel.calculator.rows.count > 0 {
            rowHeight /= CGFloat(viewModel.calculator.rows.count)
        }
       return ZStack {
           calculatorRowContentView(row: row, spacing: spacing, rowwidth: geometry.size.width, rowheight: rowHeight)
            
       }
       .frame(width: geometry.size.width, height: rowHeight)
       
    }
    func calculatorRowContentView(row: CalculatorRow, spacing: CGFloat,
                                  rowwidth: CGFloat,
                                  rowheight: CGFloat) -> some View {
        HStack(spacing: spacing){
            ForEach( row.items) { item in
                calculatorItemView(item: item, spacing: spacing, rowwidth: rowwidth, rowheight: rowheight)
            }
        }
        
    }
    private func itemWidth(widthCategory: CalculatorItemandCategory, spacing: CGFloat, rowwidth: CGFloat) -> CGFloat {
        switch widthCategory {
        case .whole:
           return rowwidth
        case .half:
            return (rowwidth - spacing * 3.0) / 2.0 + spacing
        case .quarter:
            return(rowwidth - spacing * 3.0) / 4.0
        }
        
    }
    func calculatorItemView(item: CalculatorItem, spacing: CGFloat,
                            rowwidth: CGFloat,
                            rowheight: CGFloat) -> some View {
        let itemWidth = itemWidth(widthCategory: item.widthCategory, spacing: spacing, rowwidth: rowwidth)
        let itemHeight = rowheight
       
        return ZStack{
            if let calculorButton = item as? CalculatorButton{
                buttonView(width: itemWidth, height: itemHeight, calculatorbutton: calculorButton)
            } else if let calculorDisplay = item as? CalculatorDisplay {
                displayView(width: itemWidth, height: itemHeight, caluclatorDisplay: calculorDisplay)
            }
        }
        
    }
    func displayView(width: CGFloat, height: CGFloat, caluclatorDisplay: CalculatorDisplay) -> some View {
        ZStack {
            HStack {
                Spacer()
                Text(viewModel.calculator.text)
                    .font(.title.bold())
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 16.0)
        }
        .frame(width: width, height: height)
        .background(RoundedRectangle(cornerRadius: 12.0).foregroundColor(ThemeColor.aluminum.color))
    }
    
    func buttonView(width: CGFloat, height: CGFloat, calculatorbutton: CalculatorButton) -> some View {
        Button {
            calculatorbutton.bouttonAction()
        } label: {
            ZStack {
                    Text(calculatorbutton.bouttonText)
                        .font(.title.bold())
                        .foregroundColor(.white)
                
            }
            .frame(width: width, height: height)
            .background(RoundedRectangle(cornerRadius: 16.0).foregroundColor(calculatorbutton.themeColor.color))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
