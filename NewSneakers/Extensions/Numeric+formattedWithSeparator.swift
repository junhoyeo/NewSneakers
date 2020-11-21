//
//  Numeric+formattedWithSeparator.swift
//  NewSneakers
//
//  Created by Junho Yeo on 2020/11/21.
//

import SwiftUI

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = ","
        return formatter
    }()
}

extension Numeric {
    var formattedWithSeparator: String { Formatter.withSeparator.string(for: self) ?? "" }
}
