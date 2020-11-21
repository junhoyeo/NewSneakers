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
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(LinearGradient(
                        gradient: .init(colors:[
                            Color(hex: 0xd0ebff),
                            Color(hex: 0x74c0fc)
                        ]),
                        startPoint: .init(x: 0.5, y: 0),
                        endPoint: .init(x: 0.5, y: 0.6)
                    ))
                    .frame(width: 90, height: 90)
                
                URLImage(
                    url: URL(string: sneaker.imageURL)!
                ) {image in
                    image
                        .resizable()
                        .frame(width: 86, height: 86)
                        .aspectRatio(contentMode: .fit)
                }
                .frame(maxWidth: 86)
            }
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    Text(sneaker.name)
                        .font(.system(size: 15))
                        .foregroundColor(Color(hex: 0x212529))
                        .lineLimit(2)
                    Text(sneaker.colorway)
                        .font(.system(size: 12))
                        .foregroundColor(Color(hex: 0x868e96))
                        .padding(.top, 5)
                        .lineLimit(1)
                }
                Spacer()
                Text("\(sneaker.price.formattedWithSeparator)원")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(Color(hex: 0x212529))
            }
            .padding(.vertical, 5)
            .padding(.leading, 5)
            Spacer()
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 20)
    }
    
    struct SneakerItem_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                SneakerItem(sneaker: sneakerData[0])
                SneakerItem(sneaker: sneakerData[2])
            }
            .previewLayout(.fixed(width: 340, height: 100))
        }
    }
}
