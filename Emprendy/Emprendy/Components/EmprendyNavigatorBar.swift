//
//  EmprendyNavigatorBar.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 10/8/25.
//

import SwiftUI

struct EmprendyNavigatorBar: View {
    var title: String
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.primaryText)
            Spacer()
            EmprendyTextComponent(
                text: title,
                size: 18,
                color: .primaryText,
                font: "BeVietnamPro-Bold"
            )
            Spacer()
            Image(systemName: "questionmark.circle")
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.primaryText)

        }
    }
}
