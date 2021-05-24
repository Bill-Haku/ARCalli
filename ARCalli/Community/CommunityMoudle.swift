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
var defaultUser = userStruct(headimage: nil, name: "admin")

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
var defaultPost1 = PostStruct(coverImage: nil, title: "毛笔的选用方法", user: defaultUser, likeNum: 163, commentNum: 41)
var defaultPost2 = PostStruct(coverImage: UIImage(named: "CalliEg2"), title: "毛笔的选用方法啊个肚饿好讽刺啊鹅好的UI啊好多遍", user: defaultUser, likeNum: 56, commentNum: 1)
var defaultPost3 = PostStruct(coverImage: UIImage(named: "CalliEg"), title: "毛笔的选用方法啊鹅湖举办的二哥", user: defaultUser, likeNum: 7163, commentNum: 415)
var postCards:[PostStruct] = [defaultPost1, defaultPost2, defaultPost3]
