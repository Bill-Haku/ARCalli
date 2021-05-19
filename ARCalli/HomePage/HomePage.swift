//
//  HomePage.swift
//  ARCalli
//
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

var HomePageCardDemo1 = HomePageCardUnit(coverImage: nil, type: "每日小技巧", title: "毛笔应该如何上色", subtitle: "来自毛笔社区的版主为我们带来了毛笔使用的基础技巧")
var HomePageCardDemo2 = HomePageCardUnit(coverImage: nil, type: "每日小技巧", title: "这个APP超级牛逼", subtitle: "为什么我小保底必歪？")
