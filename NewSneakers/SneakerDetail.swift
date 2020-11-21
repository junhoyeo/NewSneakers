//
//  SneakerDetail.swift
//  NewSneakers
//
//  Created by Junho Yeo on 2020/11/19.
//

import SwiftUI
import URLImage

struct BlackButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(
                LinearGradient(
                    gradient: Gradient(
                        colors: [Color(hex: 0x212529), Color(hex: 0x343a40)]),
                    startPoint: .top, endPoint: .bottom))
    }
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
            HStack {
                Button(action: {print("Buy")}) {
                    VStack {
                        Text("Buy")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                            .bold()
                        Text("From 600$")
                            .foregroundColor(.red)
                            .font(.system(size: 14))
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                }.buttonStyle(BlackButtonStyle())
                Button(action: {print("Sell")}) { VStack {
                        Text("Sell")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                            .bold()
                        Text("From 560$")
                            .foregroundColor(.green)
                            .font(.system(size: 14))
                    }
                .frame(minWidth: 0, maxWidth: .infinity)
                }.buttonStyle(BlackButtonStyle())
            }
            .padding(.top, 15)
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
