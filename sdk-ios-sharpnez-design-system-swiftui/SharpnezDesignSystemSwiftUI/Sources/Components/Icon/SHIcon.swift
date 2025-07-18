//
//  SHIcon.swift
//  SharpnezDesignSystem
//
//  Created by Tiago Linhares on 19/02/25.
//

import SwiftUI

public enum SHIconType: String, Equatable, CaseIterable {
    case activity
    case add
    case airplane
    case airplaneSquare
    case airpods
    case bag
    case bills
    case bitcoin
    case bookSaved
    case briefcase
    case budget
    case building
    case buildings
    case cake
    case calculator
    case calendar
    case call
    case car
    case card
    case cardPos
    case cart
    case category
    case chart
    case chevronLeft
    case chevronRight
    case clock
    case close
    case code
    case codeCircle
    case coffee
    case coin
    case cpu
    case crown
    case cup
    case edit
    case error
    case financialControl
    case gasoline
    case gift
    case glass
    case global
    case google
    case graph
    case headphone
    case home
    case homeTrendDown
    case homeTrendUp
    case hospital
    case house
    case info
    case instagram
    case key
    case location
    case lock
    case map
    case medal
    case menu
    case message
    case milk
    case mobile
    case money
    case moneyDetail
    case monitor
    case notification
    case people
    case personalcard
    case pet
    case printer
    case product
    case profile
    case ranking
    case receipt
    case receiptAdd
    case receiptMinus
    case reserve
    case search
    case send
    case settings
    case settingsEng
    case share
    case shield
    case ship
    case shop
    case shoppingBag
    case sms
    case success
    case teacher
    case transactionMinus
    case trash
    case truck
    case verify
    case wallet
    case walletEmptyAdd
    case warning
    case watch
    case weight
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
