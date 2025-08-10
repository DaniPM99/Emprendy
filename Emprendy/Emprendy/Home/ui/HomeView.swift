//
//  HomeView.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 10/8/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                VStack(
                    alignment: .center
                ) {
                    Rectangle()
                        .frame(maxWidth: geo.size.width, maxHeight: 390)
                    emprendyText(
                        "Welcome to your business hub",
                        size: 28,
                        color: .primaryText,
                        font: "BeVietnamPro-Bold"
                    )
                    emprendyText(
                        "Manage your appointments and finances with ease",
                        size: 16,
                        color: .primaryText,
                        font: "BeVietnamPro-Regular"
                    )
                    button(
                        "Sign up",
                        size: 16,
                        textColor: .background,
                        backgroundColor: .primaryText,
                        font: "BeVietnamPro-Bold"
                    )
                    button(
                        "Continue with Apple",
                        size: 16,
                        textColor: .primaryText,
                        backgroundColor: .secondaryButton,
                        font: "BeVietnamPro-Bold"
                    )
                    button(
                        "Continue with Google",
                        size: 16,
                        textColor: .primaryText,
                        backgroundColor: .secondaryButton,
                        font: "BeVietnamPro-Bold"
                    )
                    button(
                        "Log in",
                        size: 16,
                        textColor: .primaryText,
                        backgroundColor: .secondaryButton,
                        font: "BeVietnamPro-Bold"
                    )
                    emprendyText(
                        "By continuing, you agree to our Terms of Service and Privacy Policy",
                        size: 16,
                        color: .creditText,
                        font: "BeVietnamPro-Regular"
                    )
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.background))
    }
}

func emprendyText(_ text: String, size: CGFloat, color: Color, font: String) -> some View {
    Text(text)
        .font(.custom(font, size: size))
        .foregroundColor(color)
}

func button(_ text: String, size: CGFloat, textColor: Color, backgroundColor: Color, font: String) -> some View {
    Button(action: {
        print("Botón pulsado")
    }) {
        emprendyText(text, size: size, color: textColor, font: font)
            .padding()
            .frame(maxWidth: .infinity) // opcional: ancho total
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(backgroundColor) // color de fondo
            )
    }
    .padding()
}

#Preview {
    HomeView()
}
