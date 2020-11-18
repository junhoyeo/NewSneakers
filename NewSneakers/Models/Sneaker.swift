//
//  Sneaker.swift
//  NewSneakers
//
//  Created by Junho Yeo on 2020/11/19.
//

import SwiftUI

struct Sneaker: Hashable, Codable {
    var name: String
    var imageURL: String
    var styleCode: String
    var colorway: String
}
