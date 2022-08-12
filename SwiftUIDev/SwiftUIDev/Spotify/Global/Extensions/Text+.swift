//
//  Text+.swift
//  SwiftUIDev
//
//  Created by LeeJiSoo on 2022/08/11.
//

import SwiftUI

extension Text {

    func signupButtonFontStyle(dynamicStyle: UIFont.TextStyle, type: SignupType) -> Text {
        self.font(.custom("Gotham-Bold", size: textSize(dynamicStyle)))
            .foregroundColor(type == .signup ? Color.black : Color.white)
    }

    func loginFontStyle() -> Text {
        self.font(.custom("Gotham-Bold", size: textSize(.title3)))
            .foregroundColor(.white)
    }

    func titleFontStyle() -> Text {
        self.font(.custom("Gotham-Black", size: textSize(.largeTitle)))
        .foregroundColor(.white)
    }

    private func textSize(_ textStyle: UIFont.TextStyle) -> CGFloat {
        return UIFont.preferredFont(forTextStyle: textStyle).pointSize
    }
}
