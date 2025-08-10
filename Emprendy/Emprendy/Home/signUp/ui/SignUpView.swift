//
//  SignUpView.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 10/8/25.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack {
            EmprendyNavigatorBar(title: "Sign Up")
            EmprendyTextComponent(
                text: "Create your account",
                size: 28,
                color: .primaryText,
                font: "BeVietnamPro-Bold"
            )
            TextField("Full name", text: .constant(""))
            TextField("Email", text: .constant(""))
            SecureField("Password", text: .constant(""))
            SecureField("Confirm password", text: .constant(""))
            Spacer()
            EmprendyTextComponent(
                text: "Already have an account? Sign in",
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
    SignUpView()
}
