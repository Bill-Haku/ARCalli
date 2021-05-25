//
//  NewItemView.swift
//  ARCalli
//  创作新作品主页面
//  Created by Bill Haku on 2021/5/19.
//

import SwiftUI

struct NewItemView: View {
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    VStack {
                        Button(action: {}, label: {
                            Text("返回")
                        })
                        Spacer()
                    }
                    VStack {
                        Spacer()
                        Button(action: {}, label: {
                            Text("书写")
                        })
                    }
                    VStack {
                        Button(action: {}, label: {
                            Text("擦除")
                        })
                        Spacer()
                    }
                    VStack {
                        Spacer()
                        Button(action: {}, label: {
                            Text("笔势")
                        })
                    }
                    Spacer()
                }
                .padding()
            }
            Spacer()
            Image("")
                .resizable()
                .frame(height: 1000)
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Text("AR")
                })
                .padding()
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
