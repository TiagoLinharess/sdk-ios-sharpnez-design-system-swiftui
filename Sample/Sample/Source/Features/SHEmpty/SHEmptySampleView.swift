//
//  SHEmptySampleView.swift
//  Sample
//
//  Created by Tiago Linhares on 16/07/25.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct SHEmptySampleView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        SHEmptyView(
            title: "title",
            description: "description",
            icon: .info,
            color: .onBackground(colorScheme: colorScheme),
            onColor: .background(colorScheme: colorScheme)
        ) {
            print("action")
        }
    }
}
