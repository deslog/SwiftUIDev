//
//  SignupButton.swift
//  SwiftUIDev
//
//  Created by LeeJiSoo on 2022/08/11.
//

import SwiftUI

struct SignupButton: View {
    let type: SignupType
    let logoImageSize = 20.0
    
    var body: some View {
        HStack {
            type.logoImage?
                .resizable()
                .scaledToFit()
                .frame(width: logoImageSize)
            Spacer()
            Text(type.title)
                .signupButtonFontStyle(dynamicStyle: .title3, type: type)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Spacer()
        }
        .padding()
        .background(type.color)
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.white, lineWidth: 0.3))
    }
}
