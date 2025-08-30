//
//  EmprendyImageTextButtonComponent.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 11/8/25.
//

import SwiftUI

struct EmprendyImageTextButtonComponent: View {
    var text: String
    var size: CGFloat
    var textColor: Color
    var font: String
    var image: String
    
    var body: some View {
        Button(action: {
            print("Botón pulsado")
        }) {
            Image("icon_star")
                .resizable()
                .frame(width: 12, height: 12)
            Spacer()
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
                        .fill(.button)
                )
        }
        .padding()
    }
}
