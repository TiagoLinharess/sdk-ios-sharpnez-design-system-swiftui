//
//  SHEmptyView.swift
//  SharpnezDesignSystemSwiftUI
//
//  Created by Tiago Linhares on 14/07/25.
//

import SwiftUI

public struct SHEmptyView: View {
    
    // MARK: Properties
    
    /// View title
    private let title: String
    
    /// View description
    private let description: String
    
    /// View icon
    private let icon: SHIconType
    
    /// View color
    private let color: Color
    
    /// View onColor
    private let onColor: Color
    
    /// View action
    private let action: () -> Void
    
    // MARK: Init
    
    public init(
        title: String,
        description: String,
        icon: SHIconType,
        color: Color,
        onColor: Color,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.description = description
        self.icon = icon
        self.color = color
        self.onColor = onColor
        self.action = action
    }
    
    // MARK: Body
    
    public var body: some View {
        VStack(alignment: .center, spacing: .small) {
            Text(title)
                .configureWithSH(color: color, font: .title3(.montserrat, .regular))
                .multilineTextAlignment(.center)
            Spacer()
                .frame(height: .superGiant)
            Button(action: action) {
                SHBulletIcon(icon: icon, color: onColor, backgroundColor: color)
            }
            .buttonStyle(.plain)
            Text(description)
                .configureWithSH(color: color, font: .body(.montserrat, .regular))
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding(.small)
    }
}
