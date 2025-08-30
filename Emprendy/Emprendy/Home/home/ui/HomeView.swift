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
                    EmprendyTextComponent(
                        text: "Welcome to your business hub",
                        size: 28,
                        color: .primaryText,
                        font: "BeVietnamPro-Bold"
                    )
                    EmprendyTextComponent(
                        text: "Manage your appointments and finances with ease",
                        size: 16,
                        color: .primaryText,
                        font: "BeVietnamPro-Regular"
                    )
                    EmprendyTextButtonComponent(
                        text: "Sign up",
                        size: 16,
                        textColor: .background,
                        font: "BeVietnamPro-Bold",
                        backgroundColor: .primaryButton
                    )
                    EmprendyTextButtonComponent(
                        text: "Continue with Apple",
                        size: 16,
                        textColor: .primaryText,
                        font: "BeVietnamPro-Bold",
                        backgroundColor: .secondaryButton
                    )
                    EmprendyTextButtonComponent(
                        text: "Continue with Google",
                        size: 16,
                        textColor: .primaryText,
                        font: "BeVietnamPro-Bold",
                        backgroundColor: .secondaryButton
                    )
                    EmprendyTextButtonComponent(
                        text: "Log in",
                        size: 16,
                        textColor: .primaryText,
                        font: "BeVietnamPro-Bold",
                        backgroundColor: .secondaryButton
                    )
                    EmprendyTextComponent(
                        text: "By continuing, you agree to our Terms of Service and Privacy Policy",
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

#Preview {
    HomeView()
}
