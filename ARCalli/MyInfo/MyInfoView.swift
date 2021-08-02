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
            //Image("UserViewBGImg")
            VStack {
                Color(red: 233/255, green: 227/255, blue: 216/255)
                    .frame(height: 224)
                Spacer()
            }
            .ignoresSafeArea(.all)
            VStack {
                MyInfoTitleView()
                    .frame(width: 650, height: 250, alignment: .center)
                    .background(Color.white.shadow(radius: 6))
                HStack {
                    VStack {
                        MyInfoMyWorksView()
                            .frame(width: 300, height: 240, alignment: .center)
                            .background(Color.white.shadow(radius: 6))
                            .padding(25)
                        MyReplysView()
                            .frame(width: 300, height: 187, alignment: .center)
                            .background(Color.white.shadow(radius: 6))
                            .padding(25)
                    }
                    //.padding(25)
                    VStack {
                        MyCollectionsView()
                            .frame(width: 300, height: 187, alignment: .center)
                            .background(Color.white.shadow(radius: 6))
                            .padding(25)
                        MyEvaluationsView()
                            .frame(width: 300, height: 240, alignment: .center)
                            .background(Color.white.shadow(radius: 6))
                            .padding(25)
                    }
                    //.padding(25)
                }
                ContactUsView()
                    .frame(width: 650, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white.shadow(radius: 6))
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
