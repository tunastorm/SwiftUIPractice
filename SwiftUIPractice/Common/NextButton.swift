//
//  nextButton.swift
//  SwiftUIPractice
//
//  Created by 유철원 on 9/2/24.
//

import SwiftUI

struct NextButton<NextView: View>: View {
    
    private var title: String

    private var nextView: NextView
    
    init(title: String, nextView: NextView) {
        self.title = title
        self.nextView = nextView
    }
    
    var body: some View {
        NavigationLink(title) {
            nextView
        }
        .fontWeight(.bold)
        .foregroundStyle(.white)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 40)
        .background(.blue, in: .capsule)
        .padding(.horizontal)
    }

}
