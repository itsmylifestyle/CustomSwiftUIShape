//
//  UI.swift
//  donuldShape
//
//  Created by Айбек on 29.11.2023.
//

import SwiftUI

struct UI: View {
    
    let line : CGFloat
    let backC : Color
    let foreC : Color
    let percent : Double
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Circular()
                    .stroke(style: StrokeStyle(lineWidth: line))
                    .fill(backC)
                
                Circular(percentage: percent)
                    .stroke(style: StrokeStyle(lineWidth: line, lineCap: .round))
                    .fill(foreC)
            }
            .padding()
            .animation(.easeIn(duration: 1.0), value: percent)
        }
    }
}

struct UI_Previews: PreviewProvider {
    static var previews: some View {
        UI(line: 10, backC: .red, foreC: .green, percent: 40)
    }
}
