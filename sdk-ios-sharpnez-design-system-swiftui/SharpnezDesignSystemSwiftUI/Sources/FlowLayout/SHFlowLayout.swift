//
//  SHFlowLayout.swift
//  SharpnezDesignSystemSwiftUI
//
//  Created by Tiago Linhares on 15/07/25.
//

import SwiftUI

public struct SHFlowLayout: Layout {
    
    public init() {}
    
    nonisolated public func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        var size: CGSize = .zero
        var rowWidth: CGFloat = .zero
        var rowHeight: CGFloat = .zero
        let spacing: CGFloat = .small
        
        let maxWidth = proposal.width ?? .infinity
        
        for subview in subviews {
            let subviewSize = subview.sizeThatFits(.unspecified)
            if rowWidth + subviewSize.width > maxWidth {
                size.width = max(size.width, rowWidth)
                size.height += rowHeight + spacing
                rowWidth = .zero
                rowHeight = .zero
            }
            rowWidth += subviewSize.width + spacing
            rowHeight = max(rowHeight, subviewSize.height)
        }
        size.width = max(size.width, rowWidth)
        size.height += rowHeight
        return size
    }
    
    nonisolated public func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) {
        var x = bounds.minX
        var y = bounds.minY
        var rowHeight: CGFloat = .zero
        let spacing: CGFloat = .small
        
        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            if x + size.width > bounds.maxX {
                x = bounds.minX
                y += rowHeight + spacing
                rowHeight = .zero
            }
            subview.place(at: CGPoint(x: x, y: y), proposal: ProposedViewSize(width: size.width, height: size.height))
            x += size.width + spacing
            rowHeight = max(rowHeight, size.height)
        }
    }
}
