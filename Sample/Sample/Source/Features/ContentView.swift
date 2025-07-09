//
//  ContentView.swift
//  Sample
//
//  Created by Tiago Linhares on 09/07/25.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(SampleItem.samples) { sample in
                    NavigationLink {
                        AnyView(sample.view)
                    } label: {
                        Text(sample.name)
                            .font(.body(.montserrat, .regular))
                    }
                    .navigationTitle("SwiftUI Samples")
                }
            }
        }
    }
}
