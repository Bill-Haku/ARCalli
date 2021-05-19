//
//  CardUnitView.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/5/19.
//

import SwiftUI

struct CardUnitView: View {
    var cardUnit: HomePageCardUnit
    var body: some View {
        VStack {
            if (cardUnit.coverImage != nil) {
                Image(uiImage: cardUnit.coverImage!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            else {
                Image("CalliEg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            HStack {
                VStack(alignment: .leading) {
                    Text(cardUnit.type)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(cardUnit.title)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(cardUnit.subtitle)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                .padding()
                Spacer()
            }
            .background(Color.white.opacity(1))
        }
        .cornerRadius(50)
        .overlay(
            RoundedRectangle(cornerRadius: 50,style: .continuous)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2)
        )
        .padding([.top, .horizontal])

    }
}

struct CardUnitView_Previews: PreviewProvider {
    static var previews: some View {
        CardUnitView(cardUnit: HomePageCardDemo1)
            .previewLayout(.fixed(width: 600, height: 800))
    }
}
