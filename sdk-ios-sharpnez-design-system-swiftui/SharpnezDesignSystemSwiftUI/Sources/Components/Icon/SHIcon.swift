//
//  SHIcon.swift
//  SharpnezDesignSystem
//
//  Created by Tiago Linhares on 19/02/25.
//

import SwiftUI

public enum SHIconType: String, Equatable, CaseIterable {
    
    // MARK: UISHIcon
    
    case financialControl
    case google
    case menu
    case add
    case info
    case warning
    case error
    case success
    case close
    case chevronRight
    case chevronLeft
    case home
    case house
    case building
    case buildings
    case hospital
    case homeTrendUp
    case homeTrendDown
    case activity
    case chart
    case graph//
    case wallet
    case cardPos
    case edit
    case profile
    case bills
    case budget
    case card
    case coin
    case product
    case category
}

public struct SHIcon: View {
    
    // MARK: Properties
    
    /// Icon
    private let icon: SHIconType
    
    // MARK: Init
    
    /// Init
    public init(icon: SHIconType) {
        self.icon = icon
    }
    
    // MARK: Body
    
    public var body: some View {
        image()
    }
    
    /// Resizable component
    @ViewBuilder
    public func resizable() -> Image {
        image()
            .resizable()
    }
    
    @ViewBuilder
    func image() -> Image {
        Image(icon.rawValue, bundle: BundleToken.bundle)
    }
}
