//
//  SplashView.swift
//  SwiftUIPractice
//
//  Created by 유철원 on 9/2/24.
//

import SwiftUI


struct SplashView: View {
    
    var body: some View {
        NavigationWrapper {
            Spacer()
            appTitleText()
            launchImage()
            Spacer()
            NextButton<OnboardingView>(title: "시작하기",
                                       nextView: OnboardingView())
        }
    }
    
    private func appTitleText() -> some View {
        Text("Hello,\nMy Polaroid")
            .font(.largeTitle)
            .foregroundStyle(.blue)
            .fontWeight(.bold)
    }
    
    private func launchImage() -> some View {
        Image("launchImage")
            .padding(.bottom)
    }
    
}

#Preview {
    SplashView()
}
