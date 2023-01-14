//
//  Home.swift
//  golden-wind
//
//  Created by Atriiy on 2022/12/12.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "slider.horizontal.3")
                .resizable()
                .scaledToFill()
                .frame(width: 33, height: 28, alignment: .leading)
            
            Text("Home").font(.system(size: 35)).padding([.top], 15)
            
            Group {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.orange)
                        .frame(width: nil, height: 200, alignment: .leading)
                    VStack(alignment: .leading, spacing: 24) {
                        Image(systemName: "folder.fill")
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                        
                        HStack(alignment: .center, spacing: 10) {
                            Text("All documents").foregroundColor(Color.white)
                            Spacer()
                            Image(systemName: "arrowtriangle.forward.fill")
                        }
                        
                        Text("42").font(.largeTitle).foregroundColor(Color.white)
                    }.frame(width: UIScreen.main.bounds.size.width / 2, height: 200, alignment: .leading)
                }

            }
        }.frame(width: nil, height: nil, alignment: .topLeading)
            .padding([.leading, .trailing], 18)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
