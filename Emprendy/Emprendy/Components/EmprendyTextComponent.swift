//
//  EmprendyTextComponent.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 10/8/25.
//

import SwiftUI

struct EmprendyTextComponent: View {
    var text: String
    var size: CGFloat
    var color: Color
    var font: String
    
    var body: some View {
        Text(text)
            .font(.custom(font, size: size))
            .foregroundColor(color)
    }
}
