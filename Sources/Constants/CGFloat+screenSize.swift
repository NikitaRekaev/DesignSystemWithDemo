//  CGFloat+screenSize.swift
//  Nikita Rekaev 18.05.2023

import UIKit

extension CGFloat {
    public static let screenHeight = maximum(UIScreen.main.bounds.height, UIScreen.main.bounds.width)
    public static let screenWidth = minimum(UIScreen.main.bounds.height, UIScreen.main.bounds.width)
    public static let screenArea = screenHeight * screenWidth
}
