//
//  NavigationWrapper.swift
//  SwiftUIPractice
//
//  Created by 유철원 on 9/2/24.
//

import SwiftUI

struct NavigationWrapper<Content: View>: View {
    
    let content: Content
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                content
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton())
        } else {
            NavigationView {
                content
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton())
        }
    }
    
    private func backButton() -> some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            HStack {
                Image(systemName: "chevron.left")
                    .aspectRatio(contentMode: .fit)
            }
        }
        .foregroundStyle(.black)
    }
    
}
