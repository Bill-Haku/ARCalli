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
                        .font(.title)
                    Spacer()
                }
                HStack {
                    Text(myInfos.level)
                    Spacer()
                }
                HStack {
                    Text(myInfos.motto)
                    Spacer()
                }
                HStack {
                    Text("\(myInfos.following)")
                        .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                        .font(.custom("SF Pro Display Regular", size: 34))
                    Text("关注的笔友 ")
                    Text("\(myInfos.followed)")
                        .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                        .font(.custom("SF Pro Display Regular", size: 34))
                    Text("关注我的笔友")
                    Spacer()
                }
            }
        }
        .background(Color.white)
    }
}

struct MyInfoMyWorksView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        VStack {
            HStack {
                Text("我的作品")
                    .font(.title)
                Spacer()
            }
            HStack {
                Image("")
                    .resizable()
                Spacer()
                Text("\(myInfos.myWorksTot)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 48))
                Text("篇书法")
            }
            HStack {
                Image("")
                    .resizable()
                Spacer()
                Text("\(myInfos.myWorksARed)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 48))
                Text("AR化")
            }
        }
        .background(Color.white)
    }
}

struct MyCollectionsView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        VStack {
            HStack {
                Text("我的收藏")
                    .font(.title)
                Spacer()
            }
            HStack {
                Text("\(myInfos.collections)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 48))
                Text("篇")
                Spacer()
                Image("")
                    .resizable()
            }
        }
        .background(Color.white)
    }
}

struct MyReplysView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        VStack {
            HStack {
                Text("我的回复")
                    .font(.title)
                Spacer()
            }
            HStack {
                Text("\(myInfos.myReplys)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 48))
                Text("条")
                Spacer()
                Image("")
                    .resizable()
            }
        }
        .background(Color.white)
    }
}

struct MyEvaluationsView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        VStack {
            HStack {
                Text("我的评分")
                    .font(.title)
                Spacer()
            }
            if myInfos.evaluationImg != nil {
                Image(uiImage: myInfos.evaluationImg!)
            }
            HStack{
                Text("基于")
                Text("\(myInfos.myWorksTot)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 34))
                Text("篇作品的")
                Text("\(myInfos.evaluations)")
                    .foregroundColor(Color(red: 196/255, green: 145/255, blue: 51/255))
                    .font(.custom("SF Pro Display Regular", size: 34))
                Text("个评价")
                Spacer()
            }
        }
        .background(Color.white)
    }
}

struct ContactUsView: View {
    @State private var myInfos = userInfoDemo
    
    var body: some View {
        HStack {
            Text("联系我们")
                .font(.title)
            Spacer()
            Image("")
                .resizable()
        }
        .background(Color.white)
    }
}

struct MyInfoViews_Previews: PreviewProvider {
    static var previews: some View {
        MyInfoTitleView()
    }
}
