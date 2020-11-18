//
//  ContentView.swift
//  NewSneakers
//
//  Created by Junho Yeo on 2020/11/18.
//

import SwiftUI
import URLImage

struct ContentView: View {
    
    var body: some View {
        HStack() {
                URLImage(url: URL(string: "https://kream-phinf.pstatic.net/MjAyMDExMThfMjU2/MDAxNjA1NjkxMzExMTYz.leAiiIeRzdnBC6STAjmeqVlM0lokrpyt7EbsaWUtnnIg.hPz7sqovLq6tPmB6zs8PnR1q8UYkTl8YJiWGKm79cj0g.PNG/p_477d8861bbbd43e8aad3ee5d76c3df76.png")!) { image in
                    image
                        .resizable()
                        .frame(width: 128, height: 128)
                        .aspectRatio(contentMode: .fit)
                }
                .frame(maxWidth: 128)
            VStack(alignment: .leading) {
                Text("Nike x PEACEMINUSONE Air Force 1 Low Para-Noise 2.0")
                    .font(.system(size: 16, weight: .bold))
                HStack() {
                    Text("White/Black")
                        .font(.system(size: 12))
                    Spacer()
                    Text("DD3223-100")
                        .font(.system(size: 12))
                }
                .padding(.top, 5)
            }
        }
        .padding()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
