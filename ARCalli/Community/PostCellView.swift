//
//  PostCellView.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/5/20.
//

import SwiftUI

struct PostCellView: View {
    var Post: PostStruct
    var body: some View {
        VStack {
            if Post.coverImage != nil {
                Image(uiImage: Post.coverImage!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            else {
                Image("CalliEg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }

            VStack(alignment: .leading) {
                // 标题行
                HStack {
                    Text(Post.title)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .frame(height: 50)
                    Spacer()
                }
                // 用户和点赞评论行
                HStack {
                    if Post.user.headimage != nil {
                        Image(uiImage: Post.user.headimage!)
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                            .clipShape(Circle())
                    }
                    else {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                            .clipShape(Circle())
                    }
                    Text(Post.user.name)
                        .frame(height: 30)
                    Spacer()
                    // 点赞
                    Button(action: {likePost()}, label: {
                        HStack {
                            Image(systemName: "hand.thumbsup")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                            Text(String(Post.likeNum))
                                .frame(width: 30, height: 30, alignment: .center)
                        }
                        
                    })
                    .foregroundColor(.primary)
                    // 评论
                    Button(action: {commentPost()}, label: {
                        HStack {
                            Image(systemName: "text.bubble")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                            Text(String(Post.commentNum))
                                .frame(width: 30, height: 30, alignment: .center)
                        }
                    })
                    .foregroundColor(.primary)
                }
            }
            .padding()
            .background(Color.white)
        }
        .cornerRadius(50)
        .overlay(
            RoundedRectangle(cornerRadius: 50,style: .continuous)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2)
        )
        .padding([.top, .horizontal])
    }
}

struct PostCellView_Previews: PreviewProvider {
    static var previews: some View {
        PostCellView(Post: defaultPost)
            .previewLayout(.fixed(width: 400, height: 800))
    }
}
