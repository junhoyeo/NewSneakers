//
//  SneakerDetail.swift
//  NewSneakers
//
//  Created by Junho Yeo on 2020/11/19.
//

import SwiftUI
import URLImage

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

struct SneakerDetail: View {
    var sneaker: Sneaker
    
    var body: some View {
        VStack {
            URLImage(url: URL(string: sneaker.imageURL)!) {image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(maxWidth: UIScreen.screenWidth,
                   maxHeight: UIScreen.screenWidth)
            VStack(alignment: .leading) {
                Text(sneaker.name).font(.title).bold()
                HStack {
                    Text(sneaker.colorway)
                    Spacer()
                    Text(sneaker.styleCode)
                }
                .padding(.top, 5)
            }
            Spacer()
        }
        .padding()
    }
    
    struct SneakerList_Previews: PreviewProvider {
        static var previews: some View {
            SneakerDetail(sneaker: sneakerData[0])
                .previewDevice("iPhone 11 Pro")
        }
    }
}
