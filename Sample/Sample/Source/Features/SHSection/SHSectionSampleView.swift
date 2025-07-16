//
//  SHSectionSampleView.swift
//  Sample
//
//  Created by Tiago Linhares on 16/07/25.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct SHSectionSampleView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        SHSection(
            text: "section",
            color: .onBackground(colorScheme: colorScheme),
            font: .body(.montserrat, .regular)
        )
    }
}
