//
//  UIFont+DS+extensions.swift
//  DesignSystem
//
//  Created by Tiago Linhares on 13/07/23.
//

import SwiftUI

// MARK: DSFontName

public enum DSFontName: String {
    case poppins = "Poppins"
    case montserrat = "Montserrat"
}

// MARK: DSFontWeight

public enum DSFontWeight: String {
    case regular = "Regular"
    case medium = "Medium"
    case semiBold = "SemiBold"
    case bold = "Bold"
}

// MARK: Font Extension

extension Font {
    
    /// Title 1.
    /// Custom font with xxBig size
    public static func title1(_ style: DSFontName, _ weight: DSFontWeight) -> Font {
        return custom("\(style.rawValue)-\(weight.rawValue)", size: .xxBig)
    }
    
    /// Title 2.
    /// Custom font with xBig size
    public static func title2(_ style: DSFontName, _ weight: DSFontWeight) -> Font {
        return custom("\(style.rawValue)-\(weight.rawValue)", size: .xBig)
    }
    
    /// Title 3.
    /// Custom font with big size
    public static func title3(_ style: DSFontName, _ weight: DSFontWeight) -> Font {
        return custom("\(style.rawValue)-\(weight.rawValue)", size: .big)
    }
    
    /// Sub Title.
    /// Custom font with medium size
    public static func subtitle(_ style: DSFontName, _ weight: DSFontWeight) -> Font {
        return custom("\(style.rawValue)-\(weight.rawValue)", size: .medium)
    }
    
    /// Body.
    /// Custom font with small size
    public static func body(_ style: DSFontName, _ weight: DSFontWeight) -> Font {
        custom("\(style.rawValue)-\(weight.rawValue)", size: .small)
    }
    
    /// Caption.
    /// Custom font with smaller size
    public static func caption(_ style: DSFontName, _ weight: DSFontWeight) -> Font {
        return custom("\(style.rawValue)-\(weight.rawValue)", size: .smaller)
    }
}
