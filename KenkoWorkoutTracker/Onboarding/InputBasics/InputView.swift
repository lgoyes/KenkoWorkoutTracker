//
//  InputView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct InputHeaderView: View {
    let screenWidth: CGFloat
    let currentStep: Int
    let numberOfSteps: Int
    let title: String
    let subtitle: String
    
    private enum Constant {
        static let widthPercentage: CGFloat = 0.8
        static let spacing: CGFloat = 10
        enum PageCounter {
            static let font = AppFont.rubik.font(size: .caption1)
        }
        enum Title {
            static let font = AppFont.rubik.font(size: .title2)
        }
        enum Subtitle {
            static let font = AppFont.questrial.font(size: .subheadline)
        }
    }
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack(spacing: Constant.spacing) {
                
                Text("\(currentStep)key_input_of\(numberOfSteps)")
                    .font(Constant.PageCounter.font)
                
                Text(title)
                    .font(Constant.Title.font)
                    .multilineTextAlignment(.center)
                
                Text(subtitle)
                    .font(Constant.Subtitle.font)
                    .multilineTextAlignment(.center)
            }
            .frame(width: screenWidth * Constant.widthPercentage)
            
            Spacer()
        }
    }
}

struct InputFooterView: View {
    private enum Constant {
        enum Button {
            static let font = AppFont.rubik.font(size: .headline)
            static let foregroundColor = AppColor.Primary.VibrantBlue.color
            static let padding: CGFloat = 30
        }
    }
    
    let continueTapped: () -> Void
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            
            Button {
                continueTapped()
            } label: {
                Text("key_input_continue")
                    .font(Constant.Button.font)
                    .padding(.top, Constant.Button.padding)
                    .foregroundStyle(Constant.Button.foregroundColor)
                    .fontWeight(.bold)
            }
            
            
            Spacer()
        }
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.gray.opacity(0.4)),
            alignment: .top
        )
    }
}

struct InputView<Content: View>: View {
    let currentStep: Int
    let numberOfSteps: Int
    let title: String
    var subtitle: String = String(localized: "key_inputdefault_subtitle")
    let routeMarker: any Hashable
    let continueTapped: (any Hashable) -> Void
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                InputHeaderView(screenWidth: geometry.size.width, currentStep: currentStep, numberOfSteps: numberOfSteps, title: title, subtitle: subtitle)
                
                Spacer()
                
                content()
                
                Spacer()
                
                InputFooterView(continueTapped: {
                    continueTapped(routeMarker)
                })
                    .padding(.bottom, 16)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    InputView(currentStep: 4, numberOfSteps: 5, title: "How much do you weigh?", subtitle: "This is used to set up recommendations just for you.", routeMarker: AgeInputRoute(), continueTapped: { _ in
        debugPrint("Continue tapped")
    }) {
        EmptyView()
    }
}
