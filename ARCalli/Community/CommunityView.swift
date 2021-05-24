//
//  CommunityView.swift
//  ARCalli
//  社区动态主界面
//  Created by Bill Haku on 2021/5/19.
//

import SwiftUI

struct CommunityView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().separatorStyle = .none
    }
    
    @State private var cards: [PostStruct] = postCards
    
    var body: some View {
        NavigationView {
            CommunityCardsGrid(postCards: $cards)
            .navigationBarTitle(Text("社区动态"))
            .background(Color(red: 233/255, green: 227/255, blue: 216/255).edgesIgnoringSafeArea(.all))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
