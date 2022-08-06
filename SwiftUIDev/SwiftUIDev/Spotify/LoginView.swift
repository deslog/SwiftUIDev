//
//  LoginView.swift
//  SwiftUIDev
//
//  Created by LeeJiSoo on 2022/08/07.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Image("spotify_login_image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                signupButtons()
                    .padding(.horizontal, buttonHorizontalPadding)
            }
        }
    }

    private func signupButtons() -> some View {
        VStack(spacing: 10) {
            ForEach(LoginType.allCases, id: \.self) { type in
                HStack {
                    type.logoImage?
                        .resizable()
                        .scaledToFit()
                        .frame(width: logoImageSize)
                    Spacer()
                    Text(type.title)
                        .font(.custom("Gotham-Bold", size: textSize(.title2)))
                        .foregroundColor(type == .signup ? Color.black : Color.white)
                    Spacer()
                }
                .padding()
                .background(type.color)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 0.3))
            }
        }
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
