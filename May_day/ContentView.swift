//
//  ContentView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAnimation = false
    
    var body: some View {
        
        VStack {
            ZStack {
                Image("star2")
                    .resizable()
                    .clipShape(Circle())
                
                
                
                // ↓Image”star2”を回転させる処理
                    .rotationEffect(Angle(degrees: self.isAnimation ? 360 : 0))
                    .onAppear() {
                        withAnimation(
                            Animation
                                .linear(duration: 550)
                                .repeatForever(autoreverses: false)) {
                                    self.isAnimation.toggle()
                                    
                                }
                    }
                // セーフティエリアいっぱいまで
                    .edgesIgnoringSafeArea(.all)
                    .offset(x: 0, y: -100)
                
                
                Image("grass2")
                    .resizable()
                    .clipShape(Circle())
                // offset そこまでの結果の表示位置を調整
                    .offset(x: 0, y: 450)
                // 縦横比を維持しながらフレームをちょうど埋め尽くすサイズにする
                    .scaledToFill()
                    .shadow(color: .white, radius: 20, x: 4, y: 4)
                
                
                
            }
            ZStack {
                // 図形「四角」を表示
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.black)
                    .frame(width:290, height: 70)
                    .offset(x: 0, y: -30)
                
                
                // 影をつける
                    .compositingGroup()
                    .shadow(color: .white, radius: 3, x: 0, y: 0)
                
                HStack(spacing: 40) {    // spacingにより間隔をあける
                    
                    Image(systemName: "pencil")
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: -30)
                    
                    Image(systemName: "message")
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: -30)
                    Image(systemName: "gearshape.fill")
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: -30)
                    
                } // HStack
            } // ZStack
        }//VStack
    }// ZStack
}// ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

