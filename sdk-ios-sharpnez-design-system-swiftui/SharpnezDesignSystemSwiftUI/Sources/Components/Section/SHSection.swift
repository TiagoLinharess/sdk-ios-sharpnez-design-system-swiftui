//
//  SHSection.swift
//  SharpnezDesignSystemSwiftUI
//
//  Created by Tiago Linhares on 14/07/25.
//

import SwiftUI

public struct SHSection: View {
    
    // MARK: Properties
    
    /// Section text
    private let text: String
    
    /// Section color
    private let color: Color
    
    /// Section font
    private let font: Font
    
    // MARK: Init
    
    public init(
        text: String,
        color: Color,
        font: Font
    ) {
        self.text = text
        self.color = color
        self.font = font
    }
    
    // MARK: Body
    
    public var body: some View {
        HStack {
            Text(text)
                .configureWithSH( color: color, font: font)
            Spacer()
        }
        .padding(.leading, .extraSmall)
    }
}
