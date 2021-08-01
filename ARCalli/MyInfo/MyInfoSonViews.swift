//
//  MyInfoViews.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/08/01.
//

import SwiftUI

struct MyInfoTitleView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        HStack {
            if myInfos.userHeadImg != nil {
                Image(uiImage: myInfos.userHeadImg!)
                    .resizable()
                    .frame(width: 161, height: 161, alignment: .center)
                    .clipShape(Circle())
            }
            VStack {
                HStack {
                    Text(myInfos.name)
                        .font(.custom("PingFang SC Semibold", size: 34))
                    Spacer()
                }
                HStack {
                    Text(myInfos.level)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                HStack {
                    Text(myInfos.motto)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                HStack {
                    Text("\(myInfos.following)")
                        .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                        .font(.custom("SF Pro Display Regular", size: 34))
                    Text("关注的笔友 ")
                        .foregroundColor(.secondary)
                    Text("\(myInfos.followed)")
                        .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                        .font(.custom("SF Pro Display Regular", size: 34))
                    Text("关注我的笔友")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .padding()
        }
        .padding(45)
        .background(Color.white)
    }
}

struct MyInfoMyWorksView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        VStack {
            HStack {
                Text("我的作品")
                    .font(.custom("PingFang SC Semibold", size: 28))
                Spacer()
            }
            HStack {
                Image("Brush")
                    .resizable()
                    .frame(width: 58, height: 58, alignment: .center)
                Spacer()
                Text("\(myInfos.myWorksTot)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 48))
                Text("篇书法")
                    .foregroundColor(.secondary)
            }
            HStack {
                Image("AR")
                    .resizable()
                    .frame(width: 59, height: 59, alignment: .center)
                Spacer()
                Text("\(myInfos.myWorksARed)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 48))
                Text("AR化")
                    .foregroundColor(.secondary)
            }
        }
        .padding(28)
        .background(Color.white)
    }
}

struct MyCollectionsView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        VStack {
            HStack {
                Text("我的收藏")
                    .font(.custom("PingFang SC Semibold", size: 28))
                Spacer()
            }
            HStack {
                Text("\(myInfos.collections)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 48))
                Text("篇")
                    .foregroundColor(.secondary)
                Spacer()
                Image("Star")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
            }
        }
        .padding(21)
        .background(Color.white)
    }
}

struct MyReplysView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        VStack {
            HStack {
                Text("我的回复")
                    .font(.custom("PingFang SC Semibold", size: 28))
                Spacer()
            }
            HStack {
                Text("\(myInfos.myReplys)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 48))
                Text("条")
                    .foregroundColor(.secondary)
                Spacer()
                Image("Friends")
                    .resizable()
                    .frame(width: 62, height: 62, alignment: .center)
            }
        }
        .padding(28)
        .background(Color.white)
    }
}

struct MyEvaluationsView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        VStack {
            HStack {
                Text("我的评分")
                    .font(.custom("PingFang SC Semibold", size: 28))
                Spacer()
            }
            if myInfos.evaluationImg != nil {
                Image(uiImage: myInfos.evaluationImg!)
                    .frame(width: 257, height: 108, alignment: .center)
            }
            HStack{
                Text("基于")
                    .foregroundColor(.secondary)
                Text("\(myInfos.myWorksTot)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 34))
                Text("篇作品的")
                    .foregroundColor(.secondary)
                Text("\(myInfos.evaluations)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 34))
                Text("个评价")
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
        .padding(21)
        .background(Color.white)
    }
}

struct ContactUsView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        HStack {
            Text("联系我们")
                .font(.custom("PingFang SC Semibold", size: 28))
            Spacer()
            Image("About")
                .resizable()
                .frame(width: 44, height: 44, alignment: .center)
        }
        .padding(28)
        .background(Color.white)
    }
}

struct MyInfoViews_Previews: PreviewProvider {
    static var previews: some View {
        MyInfoTitleView()
            .previewLayout(.fixed(width: 650, height: 250))
        MyEvaluationsView()
            .previewLayout(.fixed(width: 300, height: 240))
    }
}
