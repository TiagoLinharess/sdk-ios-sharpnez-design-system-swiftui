//
//  SHLoadingViewSampleView.swift
//  SharpnezDesignSystem
//
//  Created by Tiago Linhares on 21/11/24.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct SHLoadingViewSampleView: View {
    
    var body: some View {
        List {
            NavigationLink {
                SHLoadingView(
                    color: .brand(),
                    onColor: .onBrand(),
                    firstText: "Loading",
                    font: .title3(.montserrat, .medium)
                )
            } label: {
                Text("Brand with one text")
            }
            NavigationLink {
                SHLoadingView(
                    color: .background(),
                    onColor: .onBackground(),
                    firstText: "Loading",
                    secondText: "Finishing",
                    font: .title3(.montserrat, .medium)
                )
            } label: {
                Text("Background with two texts")
            }
            NavigationLink {
                SHLoadingView(color: .surface(), onColor: .onSurface())
            } label: {
                Text("Surface")
            }
        }
        .navigationTitle("Select color scheme")
    }
}
