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
    let logoImageSize = 20.0

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
        VStack(spacing: 10) {
            ForEach(SignupType.allCases, id: \.self) { type in
                SignupButton(type: type)
            }
        }
    }

    private func loginButton() -> some View {
        Text("Log in")
            .loginFontStyle()
            .padding(.vertical, 28)
    }

    private func title() ->  some View {
        VStack {
            Image("spotify")
                .resizable()
                .scaledToFit()
                .frame(width: mainLogoSize)
            Text("Discover your next \nfavorite playlist")
                .titleFontStyle()
                .multilineTextAlignment(.center)
        }
        .padding(.vertical, 40)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
