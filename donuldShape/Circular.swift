//
//  Circular.swift
//  donuldShape
//
//  Created by Айбек on 29.11.2023.
//

import SwiftUI
import Foundation

struct Circular: Shape {
    
    var percentage : Double
    var startAngle : Double
    
    typealias AnimatableData = Double
    var animatableData: Double {
        get {
            return percentage
        }
        set {
            percentage = newValue
        }
    }
    
    init(percentage : Double = 100, startAngle : Double = -90) {
        self.percentage = percentage
        self.startAngle = startAngle
    }
    
    func path(in rect: CGRect) -> Path {
        
        let width = rect.width
        let height = rect.height
        let rad = min(width, height) / 2
        let center = CGPoint(x: width / 2, y: height / 2)
        let endAngle = (self.percentage / 100 * 360) + self.startAngle
        
        return Path { path in
            path.addArc(center: center, radius: rad, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: false)
        }
    }
}
