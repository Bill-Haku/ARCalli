//
//  MyInfoView.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/5/19.
//

import SwiftUI

struct MyInfoView: View {
    var body: some View {
        ZStack {
            Image("UserViewBGImg")
            VStack {
                MyInfoTitleView()
                    .padding(44)
                HStack {
                    VStack {
                        MyInfoMyWorksView()
                            .padding(44)
                        MyReplysView()
                            .padding(44)
                    }
                    VStack {
                        MyCollectionsView()
                            .padding(44)
                        MyEvaluationsView()
                            .padding(44)
                    }
                }
                ContactUsView()
                    .padding(44)
            }
            .padding(48)
        }
    }
}

struct MyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MyInfoView()
    }
}
