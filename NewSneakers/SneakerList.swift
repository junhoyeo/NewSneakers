//
//  SneakerList.swift
//  NewSneakers
//
//  Created by Junho Yeo on 2020/11/19.
//

import SwiftUI

struct SneakerList: View {
    var body: some View {
        NavigationView {
            List (sneakerData, id: \.styleCode) { sneaker in
                SneakerItem(sneaker: sneaker)
            }
            .navigationBarTitle(Text("Sneakers"))
        }
    }
    
    struct SneakerList_Previews: PreviewProvider {
        static var previews: some View {
            SneakerList()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
