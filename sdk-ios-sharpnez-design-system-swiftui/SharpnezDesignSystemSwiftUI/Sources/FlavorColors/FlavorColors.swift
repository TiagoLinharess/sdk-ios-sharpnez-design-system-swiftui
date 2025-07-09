//
//  FlavorColors.swift
//  SharpnezDesignSystem
//
//  Created by Tiago Linhares on 13/11/24.
//

public protocol FlavorColorsProtocol {
    var background: String { get }
    var onBackground: String { get }
    var onBackgroundBody: String { get }
    var onBackgroundWeak: String { get }
    var brand: String { get }
    var onBrand: String { get }
    var surface: String { get }
    var onSurface: String { get }
    var success: String { get }
    var onSuccess: String { get }
    var warning: String { get }
    var onWarning: String { get }
    var error: String { get }
    var onError: String { get }
    
    var backgroundDark: String { get }
    var onBackgroundDark: String { get }
    var onBackgroundBodyDark: String { get }
    var onBackgroundWeakDark: String { get }
    var brandDark: String { get }
    var onBrandDark: String { get }
    var surfaceDark: String { get }
    var onSurfaceDark: String { get }
    var successDark: String { get }
    var onSuccessDark: String { get }
    var warningDark: String { get }
    var onWarningDark: String { get }
    var errorDark: String { get }
    var onErrorDark: String { get }
}
