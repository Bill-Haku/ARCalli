//
//  MyInfo.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/08/01.
//

import Foundation
import SwiftUI

class userInfo {
    var name: String
    var userHeadImg: UIImage?
    var level: String
    var motto: String
    var following: Int
    var followed: Int
    var myWorksTot: Int
    var myWorksARed: Int
    var collections: Int
    var myReplys: Int
    var evaluations: Int
    var evaluationImg: UIImage?
    
    init(name: String, userHeadImg: UIImage?, level: String, motto: String, following: Int, followed: Int, myWorksTot: Int, myWorksARed: Int, collections: Int, myReplys: Int, evaluations: Int, evaluationImg: UIImage?) {
        self.name = name
        self.userHeadImg = userHeadImg
        self.level = level
        self.motto = motto
        self.followed = followed
        self.following = following
        self.myWorksTot = myWorksTot
        self.myWorksARed = myWorksARed
        self.collections = collections
        self.myReplys = myReplys
        self.evaluations = evaluations
        self.evaluationImg = evaluationImg
    }
}

var userInfoDemo = userInfo(name: "神笔马良", userHeadImg: nil, level: "笔友（LV.2）", motto: "每天进步一点点", following: 55, followed: 12, myWorksTot: 24, myWorksARed: 13, collections: 68, myReplys: 108, evaluations: 163, evaluationImg: nil)
