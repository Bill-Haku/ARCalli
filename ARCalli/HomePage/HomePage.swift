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
var HomePageCardDemo2 = HomePageCardUnit(coverImage: UIImage(named: "HPimage2"), type: "不知道写啥", title: "这里真的不知道可以写什么", subtitle: "打开送给粉丝的狂欢菈上看到复活卡金额话费啊啊可是觉得很烦空间啊舒服啦收到啦看是否认可的回复客户为复合大师必胜客的封建社会超负荷的草u诶还不发车u客户身份")
var HomePageCardArray: [HomePageCardUnit] = [HomePageCardDemo1]
