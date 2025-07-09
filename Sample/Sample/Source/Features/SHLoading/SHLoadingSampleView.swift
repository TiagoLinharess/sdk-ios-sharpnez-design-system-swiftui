//
//  SHLoadingSampleView.swift
//  SwiftUISDKSample
//
//  Created by Tiago Linhares on 26/07/23.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct SHLoadingSampleView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        SHLoading(style: .large, color: .brand(colorScheme: colorScheme))
        SHLoading(style: .medium, color: .brand(colorScheme: colorScheme))
        SHLoading(style: .small, color: .brand(colorScheme: colorScheme))
        SHLoading(style: .nano, color: .brand(colorScheme: colorScheme))
    }
}
