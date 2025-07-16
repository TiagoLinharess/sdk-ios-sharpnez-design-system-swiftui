
//
//  SHContainerView.swift
//  SharpnezDesignSystem
//
//  Created by Tiago Linhares on 14/11/24.
//

import SwiftUI

public struct SHContainerView<Content: View>: View {
    
    // MARK: Properties
    
    /// Container title
    private let title: String
    
    /// Content View
    @ViewBuilder private let content: Content
    
    /// Phone theme
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    // MARK: Init
    
    /// Init
    public init(
        title: String,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.content = content()
    }
    
    public init(@ViewBuilder content: () -> Content) {
        self.title = String()
        self.content = content()
    }
    
    // MARK: Body
    
    public var body: some View {
        ZStack {
            Color.background(colorScheme: colorScheme)
                .ignoresSafeArea()
            content
                .frame(maxWidth: 900)
                .toolbar(.visible)
                .toolbarRole(.automatic)
                .background(Color.background(colorScheme: colorScheme).ignoresSafeArea())
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .title) {
                        Text(title)
                            .foregroundStyle(Color.onBackground(colorScheme: colorScheme))
                            .font(.subtitle(.poppins, .regular))
                    }
                }
            
        }
    }
}
