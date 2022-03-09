//
//  ContentView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAnimation = false   // 回転アニメーション
    @State private var isModalActive0: Bool = false  // モーダル遷移画面
    @State private var isModalActive1: Bool = false
    @State private var isModalActive2: Bool = false
    @State private var isModalActive3: Bool = false
    @State private var opacity = 1.0
    
    var body: some View {
        
        
        ZStack {
            Image("star2")
            //                .resizable()
                .clipShape(Circle())
            //                .ignoresSafeArea()
            //                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            
            // ↓Image”star2”を回転させる処理
                .rotationEffect(Angle(degrees: self.isAnimation ? 360 : 0))
                .onAppear() {
                    withAnimation(
                        Animation
                            .linear(duration:800)
                            .repeatForever(autoreverses: false)) {
                                self.isAnimation.toggle()
                                
                            }
                }  // onApperここまで
            // セーフティエリアいっぱいまで
                .edgesIgnoringSafeArea(.all)
                .offset(x: 0, y: -600)
                .frame(height: 600)
            
            VStack {
                
                
                ZStack {
                    
                    
                    Image("grass2")
                        .resizable()
                        .clipShape(Circle())
                    // offset そこまでの結果の表示位置を調整
                        .offset(x: 0, y: 510)
                    // 縦横比を維持しながらフレームをちょうど埋め尽くすサイズにする
                        .scaledToFill()
                        .shadow(color: .white, radius: 20, x: 4, y: 4)
                    
                    
                    VStack {
                        
                        Button(action: {
                            self.isModalActive3.toggle()  // toggle()は、Bool値の反転を指す
                            print("WriteDiaryModalView")
                        }) {
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")    //つぶやくボタン
                                .resizable()   // ボタン画像を大きくする
                                .foregroundColor(Color.white)
                                .frame(width: 50, height: 40)
                                .shadow(color: .white, radius: 40, x: 4, y: 4)
                                .offset(x: 0, y: -10)
                            
                        }
                        .sheet(isPresented: self.$isModalActive3) {    //
                            MutteringDiaryView()                   // MutteringDiaryView.swift画面を呼び出して表示
                            
                        }
                        
                        
                        ZStack {
                            // 図形「四角」を表示
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color.black.opacity(0.5))
                                .frame(width:290, height: 60)
                            //                    .offset(x: 0, y: 300)
                            
                            
                            // 影をつける
                                .compositingGroup()
                                .shadow(color: .white, radius: 3, x: 0, y: 0)
                            
                            HStack(spacing: 40) {    // spacingにより間隔をあける
                                
                                
                                Button(action: {
                                    self.isModalActive0.toggle()  // toggle()は、Bool値の反転を指す
                                    print("MusicModalView")
                                }) {
                                    
                                    Image(systemName: "airpodsmax")
                                        .imageScale(.large)     // ボタン画像を大きくする
                                        .foregroundColor(Color.white)
                                        .frame(width: 40, height: 40)
                                }
                                .sheet(isPresented: self.$isModalActive0) {    //
                                    MusicModalView()                   // WriteDiaryModalView.swift画面を呼び出して表示
                                    
                                }
                                
                                Button(action: {
                                    self.isModalActive1.toggle()  // toggle()は、Bool値の反転を指す
                                    print("CheckDiaryModalView")
                                    
                                }) {
                                    
                                    Image(systemName: "text.book.closed.fill")
                                        .imageScale(.large)
                                        .foregroundColor(Color.white)
                                        .frame(width: 40, height: 40)
                                }
                                .sheet(isPresented: self.$isModalActive1) {    //
                                    CheckDiaryModalView()                   // CheckDiaryModalView.swift画面を呼び出して表示
                                }
                                
                                Button(action: {
                                    self.isModalActive2.toggle()  // toggle()は、Bool値の反転を指す
                                    print("SystemModalView")
                                }) {
                                    Image(systemName: "gearshape.fill")
                                        .imageScale(.large)
                                        .foregroundColor(Color.white)
                                        .frame(width: 40, height: 40)
                                }
                                .sheet(isPresented: self.$isModalActive2) {    //
                                    SystemModalView()                   // SystemModalView.swift画面を呼び出して表示
                                }
                            }
                        }
                    }// HStack
                    
                } // ZStack
            }  //VStack
        }// ZStack
        
    }// ZStack
    
}// ContentView






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

