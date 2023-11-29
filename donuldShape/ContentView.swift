//
//  ContentView.swift
//  donuldShape
//
//  Created by Айбек on 29.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var first : Double = 50
    @State var second : Double = 0
    @State var third : Double = 0
    
    var body: some View {
        ZStack {
            UI(line: 40, backC: .blue.opacity(0.2), foreC: .blue, percent: first)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.first == 0 {
                        self.first = 50
                    } else {
                        self.first = 0
                    }
                }
            
            UI(line: 40, backC: .red.opacity(0.2), foreC: .red, percent: second)
                .frame(width: 250, height: 250)
                .onTapGesture {
                    if self.second == 0 {
                        self.second = 75
                    } else {
                        self.second = 0
                    }
                }
            
            UI(line: 40, backC: .green.opacity(0.2), foreC: .green, percent: third)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    if self.third == 0 {
                        self.third = 100
                    } else {
                        self.third = 0
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
