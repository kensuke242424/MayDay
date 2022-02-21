//
//  ContentView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAnimation = false   // 回転アニメーション
    @State private var modalView: Bool = false  // モーダル遷移画面
    
    var body: some View {
        
        VStack {
            ZStack {
                Image("star2")
                    .resizable()
                    .clipShape(Circle())
                    .ignoresSafeArea()
                //                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                
                
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
                    .fill(Color.black.opacity(0.7))
                    .frame(width:290, height: 70)
                //                    .offset(x: 0, y: -30)
                
                
                // 影をつける
                    .compositingGroup()
                    .shadow(color: .white, radius: 3, x: 0, y: 0)
                
                HStack(spacing: 40) {    // spacingにより間隔をあける
                    
                    Button(action: {
                        print("タップされました")
                        
                    }) {
                        Image(systemName: "pencil")
                            .foregroundColor(Color.white)
                        
                    }
                    
                    Button(action: {
                        print("タップされました")
                        
                    }) {
                        Image(systemName: "message")
                            .foregroundColor(Color.white)
                    }
                    
                    Button(action: {
                        self.modalView = true
                    }) {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(Color.white)
                    }.sheet(isPresented: self.$modalView) {
                        HStack {
                            Text("モーダルビュー")
                        }
                    }  // .sheet
                    
                } // HStack
            } // ZStack
        }//VStack
    }// ZStack
}// ContentView

struct ModalView: View {
    
    var body: some View{
        Text("モーダル遷移画面")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

