//
//  SquareCard.swift
//  golden-wind
//
//  Created by Atriiy on 2023/1/14.
//

import SwiftUI

struct SquareCard: View {
    @State var icon: String
    @State var title: String
    @State var numOfItems: Int
    
    var borderColor = Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.8)
    
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            Image(systemName: icon)
                .resizable()
                .frame(width: 44, height: 38)
                .foregroundColor(borderColor)
            HStack {
                Text(title)
                Image(systemName: "arrow.right")
            }.font(.system(size: 13))
            Text(String(numOfItems)).font(.system(size: 22))
                .foregroundColor(borderColor)
        }
        .padding(20)
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1)
        )
    }
}

struct SquareCard_Previews: PreviewProvider {
    static var previews: some View {
        SquareCard(icon: "folder", title: "All Documents", numOfItems: 32)
    }
}
