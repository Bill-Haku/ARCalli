//
//  HomePage.swift
//  ARCalli
//  主页卡片中用到的类
//  Created by Bill Haku on 2021/5/19.
//

import Foundation
import SwiftUI

class HomePageCardUnit: ObservableObject {
    @Published var coverImage: UIImage?
    @Published var type: String
    @Published var title: String
    @Published var subtitle: String
    
    init(coverImage: UIImage?, type: String, title: String, subtitle: String) {
        self.coverImage = coverImage
        self.type = type
        self.title = title
        self.subtitle = subtitle
    }
}

var HomePageCardDemo1 = HomePageCardUnit(coverImage: UIImage(named: "HPimage1"), type: "每日小技巧", title: "“蘸”、“点”、“染”，毛笔应该如何上色？", subtitle: "来自毛笔书法社区的版主“小小庚子”今天为大家带来了毛笔使用的基础技巧")
var HomePageCardDemo2 = HomePageCardUnit(coverImage: UIImage(named: "HPimage2"), type: "创作分享", title: "来看看我的新作品吧！", subtitle: "这是昨天我写出来的作品，并且把它AR化了挂在了我家的墙上，大家一起来看看效果吧！")
var HomePageCardArray: [HomePageCardUnit] = [HomePageCardDemo1]
