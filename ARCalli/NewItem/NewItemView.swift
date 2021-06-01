//
//  NewItemView.swift
//  ARCalli
//  创作新作品主页面
//  Created by Bill Haku on 2021/5/19.
//

import SwiftUI

struct NewItemView: View {
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    
    var tabButtons: some View {
        HStack {
            VStack {
                Button(action: {}, label: {
                    Image("comeback")
                    Text("返回")
                })
                Spacer()
            }
            VStack {
                Spacer()
                Button(action: {}, label: {
                    Image("writing")
                    Text("书写")
                })
            }
            VStack {
                Button(action: {}, label: {
                    Image("cancel")
                    Text("擦除")
                })
                Spacer()
            }
            VStack {
                Spacer()
                Button(action: {}, label: {
                    Image("bold")
                    Text("笔势")
                })
            }
            Spacer()
        }
        .padding()
    }
    
    var body: some View {
        VStack {
            ZStack {
                Image("backgroundTab")
                    .resizable()
                    .frame(width: screenWidth, height: screenHeight/7)
                tabButtons
                    .padding(30)
                    .foregroundColor(.black)
            }
            Spacer()
            Image("")
                .resizable()
                .frame(height: 700)
            HStack {
                Spacer()
                ZStack {
                    Image("backgroundAR")
                        .resizable()
                        .frame(width: 200, height: 200)
                    Button(action: {}, label: {
                        Image("letterAR")
                    })
                    .padding()
                }
                
            }
        }
        .background(Color(red: 233/255, green: 227/255, blue: 216/255).edgesIgnoringSafeArea(.all))
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
