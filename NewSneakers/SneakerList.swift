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
            ScrollView {
                LazyVStack {
                    ForEach (sneakerData, id: \.styleCode) { sneaker in
                        NavigationLink (destination: SneakerDetail(sneaker: sneaker)) {
                            SneakerItem(sneaker: sneaker)
                        }
                    }
                }
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
