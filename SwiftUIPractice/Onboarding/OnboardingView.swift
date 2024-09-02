//
//  OnboardingView.swift
//  SwiftUIPractice
//
//  Created by 유철원 on 9/2/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var nickname = ""
    
    private let mbtiVector = [
        ["E", "I"],
        ["S", "N"],
        ["T", "F"],
        ["J", "P"]
    ]
    
    var body: some View {
        NavigationWrapper {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.gray)
                .navigationTitle("PROFILE SETTING")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.bottom)
            profileImageView()
            underLineTextField()
                .padding()
            mbtiView()
            Spacer()
            NextButton(title: "완료", nextView: CompleteView())
        }
    }
    
    private func profileImageView() -> some View {
        profileImage()
            .overlay {
                HStack {
                    HStack{
                        Image(systemName: "camera.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.white)
                    }
                    .frame(width: 40, height: 40)
                    .background(.blue, in: Circle())
                }.frame(width: 120, height: 120, alignment: .bottomTrailing)
            }
    }
    
    
    private func profileImage() -> some View {
        let random = Int.random(in: 0...11)
        return Image("profile_\(random)")
            .resizable()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .background(in: Circle())
            .overlay {
                Circle().stroke(.blue,lineWidth: 6)
            }
    }
    
    private func underLineTextField() -> some View {
        VStack {
            TextField("닉네임을 입력해주세요.", text: $nickname)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            Rectangle()
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
        }
    }
    
    
    private func mbtiView() -> some View {
        HStack {
            Spacer()
            Text("MBTI")
            Spacer()
            mbtiButtonView()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
    
    private func mbtiButtonView() -> some View {
        HStack {
            ForEach(mbtiVector, id: \.self) { item in
                mbtiButtonSet(titles: item)
            }
        }
    }
    
    private func mbtiButtonSet(titles: [String]) -> some View {
        return VStack {
            ForEach(titles, id: \.self) { item in
                mbtiButton(title: item)
            }
        }
        .foregroundStyle(.gray)
       
    }
    
    private func mbtiButton(title: String) -> some View {
        Button(title) {
            
        }
        .frame(width: 50, height: 50)
        .font(.body)
        .overlay {
            Circle().stroke(.gray,lineWidth: 2)
        }
    }
    
}

#Preview {
    OnboardingView()
}

