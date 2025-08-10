//
//  EmprendyButtonComponent.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 10/8/25.
//

import SwiftUI

struct EmprendyButtonComponent: View {
    var text: String
    var size: CGFloat
    var textColor: Color
    var font: String
    var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            print("Botón pulsado")
        }) {
            EmprendyTextComponent(
                text: text,
                size: size,
                color: textColor,
                font: font
            )
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(backgroundColor)
                )
        }
        .padding()
    }
}
