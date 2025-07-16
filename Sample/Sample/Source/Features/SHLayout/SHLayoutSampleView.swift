//
//  SHLayoutSampleView.swift
//  Sample
//
//  Created by Tiago Linhares on 16/07/25.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct SHLayoutSampleView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        SHFlowLayout {
            ForEach(SHIconType.allCases, id: \.self) { iconType in
                Button {
                    print(iconType.rawValue)
                } label: {
                    SHIcon(icon: iconType)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(Color.onBackground(colorScheme: colorScheme))
                        .frame(width: .superBig, height: .superBig)
                }
                .buttonStyle(.plain)
            }
        }
    }
}
