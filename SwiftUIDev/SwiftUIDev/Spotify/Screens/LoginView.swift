//
//  LoginView.swift
//  SwiftUIDev
//
//  Created by LeeJiSoo on 2022/08/07.
//

import SwiftUI

struct LoginView: View {
    let buttonHorizontalPadding = 32.0
    let mainLogoSize = 44.0
    let signupButtonInterval = 10.0
    let loginButtonPadding = 28.0
    let titleInterval = 28.0
    let titleAndButtonInterval = 40.0

    var body: some View {
        ZStack {
            Image("spotify_login_image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                title()
                signupButtons()
                    .padding(.horizontal, buttonHorizontalPadding)
                loginButton()
            }
        }
    }

    private func signupButtons() -> some View {
        VStack(spacing: signupButtonInterval) {
            ForEach(SignupType.allCases, id: \.self) { type in
                SignupButton(type: type)
            }
        }
    }

    private func loginButton() -> some View {
        Text("Log in")
            .loginFontStyle()
            .padding(.vertical, loginButtonPadding)
    }

    private func title() -> some View {
        VStack (spacing: titleInterval){
            Image("spotify")
                .resizable()
                .scaledToFit()
                .frame(width: mainLogoSize)
            Text("Discover your next \nfavorite playlist")
                .titleFontStyle()
                .multilineTextAlignment(.center)
        }
        .padding(.vertical, titleAndButtonInterval)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
