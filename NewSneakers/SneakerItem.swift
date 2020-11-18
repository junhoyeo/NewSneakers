//
//  SneakerItem.swift
//  NewSneakers
//
//  Created by Junho Yeo on 2020/11/19.
//

import SwiftUI
import URLImage

struct SneakerItem: View {
    var sneaker: Sneaker
    
    var body: some View {
        HStack() {
            URLImage(
                url: URL(string: sneaker.imageURL)!
            ) {image in
                image
                    .resizable()
                    .frame(width: 128, height: 128)
                    .aspectRatio(contentMode: .fit)
            }
            .frame(maxWidth: 128)
            VStack(alignment: .leading) {
                Text(sneaker.name)
                    .font(.system(size: 16, weight: .bold))
                HStack() {
                    Text(sneaker.colorway)
                        .font(.system(size: 12))
                    Spacer()
                    Text(sneaker.styleCode)
                        .font(.system(size: 12))
                }
                .padding(.top, 5)
            }
        }
        .padding()
    }
    
    struct SneakerItem_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                SneakerItem(sneaker: sneakerData[0])
                SneakerItem(sneaker: sneakerData[1])
            }
            .previewLayout(.fixed(width: 375, height: 150))
        }
    }
}
