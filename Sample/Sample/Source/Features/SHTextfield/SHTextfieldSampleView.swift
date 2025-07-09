//
//  SHTextfieldSampleView.swift
//  SharpnezDesignSystemSwiftUI
//
//  Created by Tiago Linhares on 28/11/24.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct SHTextfieldSampleView: View {
    
    @State var text: String = ""
    @State var text1: String = ""
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        SHTextField(
            title: "Sem mascara",
            color: .brand(colorScheme: colorScheme),
            font: .montserrat,
            text: $text
        )
        SHTextField(
            title: "Email",
            color: .onBackground(colorScheme: colorScheme),
            font: .montserrat,
            text: $text1,
            contentType: .emailAddress,
            keyboardType: .emailAddress
        )
    }
}
