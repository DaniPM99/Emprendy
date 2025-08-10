//
//  EmprendyTextFieldComponent.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 10/8/25.
//

import SwiftUI

struct EmprendyTextFieldComponent: View {
    var placeholder: String
    var isPassword: Bool
    
    var body: some View {
        if isPassword {
            SecureField(placeholder, text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(.primaryButton)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.secondaryButton)
                )
        } else {
            TextField(placeholder, text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(.primaryButton)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.secondaryButton)
                )
        }
    }
}
