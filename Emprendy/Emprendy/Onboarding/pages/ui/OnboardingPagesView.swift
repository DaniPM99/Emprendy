//
//  OnboardingPagesView.swift
//  Emprendy
//
//  Created by Daniel Parra Martin on 11/8/25.
//

import SwiftUI

struct OnboardingPagesView: View {
    @State var currentPage: Int = 0
    var body: some View {
        VStack {
            EmprendyNavigatorBar(title: "Business name")
            getOnboardingPageView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.background))
    }
    
    func getOnboardingPageView() -> some View {
        VStack {
            if (currentPage == 0) {
                OnboardingPageOneView()
            } else if (currentPage == 1) {
                OnboardingPageTwoView()
            } else if (currentPage == 2) {
                
            } else {
                OnboardingPageThreeView()
            }
        }
    }
    
    func OnboardingPageOneView() -> some View {
        VStack {
            EmprendyTextFieldComponent(
                placeholder: "Business name",
                isPassword: false
            )
            Spacer()
            EmprendyTextButtonComponent(
                text: "Continue",
                size: 16,
                textColor: .background,
                font: "BeVietnamPro-Bold",
                backgroundColor: .primaryButton
            )
        }
    }
    
    func OnboardingPageTwoView() -> some View {
        VStack {
            EmprendyTextFieldComponent(
                placeholder: "Search for a service",
                isPassword: false
            )
            EmprendyTextComponent(
                text: "Popular services",
                size: 18,
                color: .primaryText,
                font: "BeVietnamPro-Bold"
            )
            VStack (spacing: 2) {
                pageTwoRowView()
                pageTwoRowView()
                pageTwoRowView()
            }
            Spacer()
            EmprendyTextButtonComponent(
                text: "Next",
                size: 16,
                textColor: .background,
                font: "BeVietnamPro-Bold",
                backgroundColor: .primaryButton
            )
        }
    }
    
    func pageTwoRowView() -> some View {
        HStack (spacing: 2) {
            EmprendyImageTextButtonComponent(
                text: "Haircut",
                size: 16,
                textColor: .primaryText,
                font: "BeVietnamPro-Bold",
                image: "icon_star")
            EmprendyImageTextButtonComponent(
                text: "Painting",
                size: 16,
                textColor: .primaryText,
                font: "BeVietnamPro-Bold",
                image: "icon_star")
        }
    }
}

#Preview {
    OnboardingPagesView()
}
