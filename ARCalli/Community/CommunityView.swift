//
//  CommunityView.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/5/19.
//

import SwiftUI

struct CommunityView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            List {
                PostCellView(Post: defaultPost)
                    .listRowBackground(Color(red: 233/255, green: 227/255, blue: 216/255).edgesIgnoringSafeArea(.all))
            }
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
