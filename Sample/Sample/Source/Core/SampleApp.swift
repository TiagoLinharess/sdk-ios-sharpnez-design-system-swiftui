//
//  SampleApp.swift
//  Sample
//
//  Created by Tiago Linhares on 09/07/25.
//

import SharpnezDesignSystemSwiftUI
import SwiftUI

@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    DesignSystemConfiguration.start(flavorColors: FlavorColors())
                }
        }
    }
}
