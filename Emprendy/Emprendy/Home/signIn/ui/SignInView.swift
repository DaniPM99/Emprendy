//
//  SignInView.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 10/8/25.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            EmprendyNavigatorBar(title: "Sign In")
            EmprendyTextFieldComponent(
                placeholder: "Email",
                isPassword: false
            )
            EmprendyTextFieldComponent(
                placeholder: "Password",
                isPassword: true
            )
            EmprendyTextComponent(
                text: "Forgot password?",
                size: 14,
                color: .creditText,
                font: "BeVietnamPro-Regular"
            )
            EmprendyTextButtonComponent(
                text: "Sign in",
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
            Spacer()
            EmprendyTextComponent(
                text: "No account? Sign up",
                size: 14,
                color: .creditText,
                font: "BeVietnamPro-Regular"
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.background))
    }
}

#Preview {
    SignInView()
}
