//
//  Model.swift
//  SwiftUIDev
//
//  Created by LeeJiSoo on 2022/08/07.
//

import SwiftUI

enum LoginType: CaseIterable {
    case signup
    case google
    case facebook
    case apple

    var title: String {
        switch self {
        case .signup:
            return "Sign up"
        case .google:
            return "Continue with Google"
        case .facebook:
            return "Continue with Facebook"
        case .apple:
            return "Continue with Apple"
        }
    }

    var logoImage: Image? {
        switch self {
        case .google:
            return Image("google")
        case .facebook:
            return Image("facebook")
        case .apple:
            return Image("apple")
        default:
            return Image("google") // 아무것도 안받게 어케하지? nil로
        }
    }

    var color: Color {
        switch self {
        case .signup:
            return .green
        default:
            return .black
        }
    }
}
