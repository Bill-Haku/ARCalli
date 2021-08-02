//
//  CommunityMoudle.swift
//  ARCalli
//  社区页卡片中用到的类
//  Created by Bill Haku on 2021/5/20.
//

import Foundation
import SwiftUI

// 用户类
class userStruct: ObservableObject {
    @Published var headimage: UIImage?
    @Published var name: String
    
    init(headimage: UIImage?, name: String) {
        self.headimage = headimage
        self.name = name
    }
}
var defaultUser = userStruct(headimage: nil, name: "可爱的小毛")
var defaultUser2 = userStruct(headimage: nil, name: "可爱的小锋")
var defaultUser3 = userStruct(headimage: nil, name: "可爱的小春")
var defaultUser4 = userStruct(headimage: nil, name: "可爱的小方")

// 卡片类
class PostStruct: ObservableObject {
    @Published var coverImage: UIImage?
    @Published var title: String
    @Published var user: userStruct
    @Published var likeNum: Int
    @Published var commentNum: Int
    
    init(coverImage: UIImage?, title: String, user: userStruct, likeNum: Int, commentNum: Int) {
        self.coverImage = coverImage
        self.title = title
        self.user = user
        self.likeNum = likeNum
        self.commentNum = likeNum
    }
}
//  几个测试用例
var defaultPost1 = PostStruct(coverImage: UIImage(named: "image1"), title: "毛笔的选用方法——新手向", user: defaultUser, likeNum: 163, commentNum: 41)
var defaultPost2 = PostStruct(coverImage: UIImage(named: "image2"), title: "举笔运锋——草书入门", user: defaultUser2, likeNum: 56, commentNum: 1)
var defaultPost3 = PostStruct(coverImage: UIImage(named: "image3"), title: "“春之道”——春字的写法", user: defaultUser3, likeNum: 7163, commentNum: 415)
var defaultPost4 = PostStruct(coverImage: UIImage(named: "image4"), title: "浅谈书法室内摆放之道", user: defaultUser, likeNum: 67, commentNum: 9)
var defaultPost5 = PostStruct(coverImage: UIImage(named: "image5"), title: "家中必不可少墨宝", user: defaultUser4, likeNum: 103, commentNum: 24)

var postCards:[PostStruct] = [defaultPost1, defaultPost2, defaultPost3, defaultPost4, defaultPost5]
