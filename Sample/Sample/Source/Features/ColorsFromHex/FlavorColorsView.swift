//
//  FlavorColorsView.swift
//  SwiftUISDKSample
//
//  Created by Tiago Linhares on 12/07/23.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct FlavorColorsView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        VStack(alignment: .leading, spacing: .small) {
            Text("brand")
                .foregroundStyle(Color.brand(colorScheme: colorScheme))
            Text("onBrand")
                .foregroundStyle(Color.onBrand(colorScheme: colorScheme))
                .background(Color.brand(colorScheme: colorScheme))
            Text("surface")
                .foregroundStyle(Color.surface(colorScheme: colorScheme))
            Text("onSurface")
                .foregroundStyle(Color.onSurface(colorScheme: colorScheme))
                .background(Color.surface(colorScheme: colorScheme))
            Text("background")
                .foregroundStyle(Color.background(colorScheme: colorScheme))
                .background(Color.onBackground(colorScheme: colorScheme))
            Text("onBackground")
                .foregroundStyle(Color.onBackground(colorScheme: colorScheme))
            Text("onBackgroundBody")
                .foregroundStyle(Color.onBackgroundBody(colorScheme: colorScheme))
            Text("onBackgroundWeak")
                .foregroundStyle(Color.onBackgroundWeak(colorScheme: colorScheme))
            Text("success")
                .foregroundStyle(Color.success())
            Text("onSuccess")
                .foregroundStyle(Color.onSuccess())
                .background(Color.success())
            Text("warning")
                .foregroundStyle(Color.warning())
            Text("onWarning")
                .foregroundStyle(Color.onWarning())
                .background(Color.warning())
            Text("error")
                .foregroundStyle(Color.error())
            Text("error")
                .foregroundStyle(Color.onError())
                .background(Color.error())
        }
    }
}
