//
//  AppFont.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

enum AppFont: String {
    case questrial = "Questrial-Regular"
    case rubik = "Rubik-Regular"
    
    func font(size: UIFont.TextStyle) -> Font {
        Font.custom(self.rawValue,
                    size: UIFont.preferredFont(forTextStyle: size).pointSize,
                    relativeTo: .body)
    }
}
