//
//  WelcomeView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct WelcomeHeaderView: View {
    private enum Constant {
        enum Logo {
            static let name = "LogoTransparent"
            static let size: CGFloat = 60
        }
        enum Title {
            static let font = AppFont.rubik.font(size: .extraLargeTitle)
        }
        enum Subtitle {
            static let font = AppFont.questrial.font(size: .headline)
        }
    }
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .leading) {
                Image(Constant.Logo.name)
                    .resizable()
                    .frame(width: Constant.Logo.size, height: Constant.Logo.size)
                    .scaledToFit()
                
                Text("key_welcome_title")
                    .font(Constant.Title.font)
                Text("key_welcome_subtitle")
                    .font(Constant.Subtitle.font)
            }
            Spacer()
        }
    }
}

struct WelcomeSignUpButtonsView: View {
    let screenWidth: CGFloat
    let signUp: () -> Void
    
    private enum Constant {
        enum Button {
            static let font = AppFont.rubik.font(size: .headline)
            static let widthPercentage: CGFloat = 0.6
            static let foregroundColor = AppColor.Primary.LightGrayBlue.color
            static let backgroundColor = AppGradient.primary
        }
    }
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                signUp()
            } label: {
                Text("key_welcome_signupbutton")
                    .font(Constant.Button.font)
                    .foregroundStyle(Constant.Button.foregroundColor)
                    .frame(width: screenWidth * Constant.Button.widthPercentage)
                    .padding()
                    .background(Constant.Button.backgroundColor)
            }
        }
    }
}

struct WelcomeFooterView: View {
    let signIn: () -> Void
    
    private enum Constant {
        enum Message {
            static let font = AppFont.questrial.font(size: .headline)
        }
        enum Button {
            static let font = AppFont.rubik.font(size: .headline)
            static let foregroundColor = AppColor.Primary.VibrantBlue.color
        }
        static let spacing: CGFloat = 15
        static let trailingPadding: CGFloat = 30
    }
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .trailing, spacing: Constant.spacing) {
                Text("key_welcome_alreadyhasaccount")
                    .font(Constant.Message.font)
                
                Button {
                    signIn()
                } label: {
                    Text("key_welcome_signinbutton")
                        .font(Constant.Button.font)
                        .foregroundStyle(Constant.Button.foregroundColor)
                }
            }
            .padding(.trailing, Constant.trailingPadding)
        }
    }
}

struct WelcomeView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 20) {
                
                Spacer()
                
                WelcomeHeaderView()
                
                Spacer()
                
                WelcomeSignUpButtonsView(screenWidth: geometry.size.width) {
                    path.append(AuthInputRoute())
                }
                
                Spacer()
                
                WelcomeFooterView {
                    
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    WelcomeView(path: .constant(NavigationPath()))
}
