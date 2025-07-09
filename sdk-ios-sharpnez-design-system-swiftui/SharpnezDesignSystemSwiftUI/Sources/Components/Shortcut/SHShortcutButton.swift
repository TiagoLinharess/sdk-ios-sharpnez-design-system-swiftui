//
//  SHShortcutButton.swift
//  SharpnezDesignSystem
//
//  Created by Tiago Linhares on 13/11/24.
//

import SwiftUI

public struct SHShortcutButton: View {
    // MARK: Properties
    
    /// Button icon
    private let icon: SHIconType
    
    /// Button text
    private let label: String
    
    /// Button Font
    private let font: DSFontName
    
    /// Button Color
    private let color: Color
    
    /// Button on color
    private let onColor: Color
    
    /// Label on color
    private let labelColor: Color
    
    /// Button Action
    private let action: () -> Void
    
    // MARK: Init
    
    /// Init
    public init(
        icon: SHIconType,
        label: String,
        font: DSFontName,
        color: Color,
        onColor: Color,
        labelColor: Color,
        action: @escaping () -> Void
    ) {
        self.icon = icon
        self.label = label
        self.font = font
        self.color = color
        self.onColor = onColor
        self.labelColor = labelColor
        self.action = action
    }
    
    // MARK: Body
    
    public var body: some View {
        VStack(alignment: .center, spacing: .extraSmall) {
            SHBulletIcon(icon: icon, color: onColor, backgroundColor: color)
            Text(label)
                .configureWithSH(color: labelColor, font: .caption(font, .medium))
                .lineLimit(2)
        }
        .onTapGesture(perform: action)
    }
}
