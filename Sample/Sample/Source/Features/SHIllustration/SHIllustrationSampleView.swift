//
//  SHIllustrationSampleView.swift
//  SharpnezDesignSystemSwiftUI
//
//  Created by Tiago Linhares on 19/02/25.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct SHIllustrationSampleView: View {
    
    struct Illustration: Identifiable {
        var id: UUID = UUID()
        let value: SHIllustrationType
    }
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    let illustrations: [Illustration] = [
        .init(value: .biometry),
        .init(value: .pin),
        .init(value: .recover),
        .init(value: .security)
    ]
    
    var body: some View {
        List(illustrations) { illustration in
            VStack(spacing: .small) {
                SHIllustration(illustration: illustration.value)
                    .foregroundStyle(Color.onBrand(colorScheme: colorScheme))
                Text(illustration.value.rawValue)
            }
        }
    }
}
