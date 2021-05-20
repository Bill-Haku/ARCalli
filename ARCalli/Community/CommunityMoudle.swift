//
//  CommunityMoudle.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/5/20.
//

import Foundation
import SwiftUI

class userStruct: ObservableObject {
    @Published var headimage: UIImage?
    @Published var name: String
    
    init(headimage: UIImage?, name: String) {
        self.headimage = headimage
        self.name = name
    }
}
var defaultUser = userStruct(headimage: nil, name: "admin")

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
var defaultPost = PostStruct(coverImage: nil, title: "毛笔的选用方法", user: defaultUser, likeNum: 163, commentNum: 41)
