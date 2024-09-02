//
//  CompleteView.swift
//  SwiftUIPractice
//
//  Created by 유철원 on 9/2/24.
//

import SwiftUI


struct CompleteView: View {
    
    var body: some View {
        NavigationWrapper {
            Rectangle()
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.gray)
                .navigationTitle("PROFILE SETTING")
                .navigationBarTitleDisplayMode(.inline)
            Spacer()
            completeLabel()
            Spacer()
        }
    }
    
    private func completeLabel() -> some View {
        Text("가입되었습니다.")
            .font(.body)
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
    }
    
}

#Preview {
    CompleteView()
}
