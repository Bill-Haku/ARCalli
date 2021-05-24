//
//  CommunityCardsGrid.swift
//  ARCalli
//  使用WaterfallGrid构建瀑布流界面
//  Created by Bill Haku on 2021/5/24.
//

import SwiftUI
import WaterfallGrid

struct CommunityCardsGrid: View {
    @Binding var postCards: [PostStruct]
    
    var body: some View {
        ScrollView(showsIndicators: true) {
            WaterfallGrid((0..<postCards.count), id: \.self) {
                index in
                PostCellView(Post: self.$postCards[index])
            }
            .gridStyle(columns: 2, spacing: 2, animation: .default)
            .padding(.init(top: 8, leading: 8, bottom: 8, trailing: 8))
        }
    }
}

struct CommunityCardsGrid_Previews: PreviewProvider {
    static let cards = postCards
    static var previews: some View {
        CommunityCardsGrid(postCards: .constant(cards))
    }
}
