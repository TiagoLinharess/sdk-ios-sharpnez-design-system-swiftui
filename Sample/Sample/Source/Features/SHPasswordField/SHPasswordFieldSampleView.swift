//
//  SHPasswordFieldSampleView.swift
//  SharpnezDesignSystemSwiftUI
//
//  Created by Tiago Linhares on 29/11/24.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct SHPasswordFieldSampleView: View {
    
    @State var text: String = ""
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        SHPasswordField(
            title: "Senha",
            color: .brand(colorScheme: colorScheme),
            font: .montserrat,
            text: $text
        )
    }
}
