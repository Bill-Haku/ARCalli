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

var HomePageCardDemo1 = HomePageCardUnit(coverImage: UIImage(named: "CalliEg2"), type: "每日小技巧", title: "“蘸”、“点”、“染”，毛笔应该如何上色？", subtitle: "来自毛笔书法社区的版主“小小庚子”今天为大家带来了毛笔使用的基础技巧")
var HomePageCardDemo2 = HomePageCardUnit(coverImage: UIImage(named: "CalliEg"), type: "孤寡的还怨", title: "今天520为什么我要写代码", subtitle: "今天中午虽然没吃饭但是中午起床刷空间发现突然肚子已经饱了")
var HomePageCardArray: [HomePageCardUnit] = [HomePageCardDemo1]
