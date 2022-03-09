//
//  MutteringDiaryView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/24.
//

import SwiftUI


struct MutteringDiaryView: View {
    
    @State private var text = """

"""
    
    init() {  // 初期化
      UITextView.appearance().backgroundColor = .clear  // TextEditorの背景色を変更するために、UITextViewの背景を透明にする処理
    }
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text("今日はどんな日ですか？")
                .frame(width: 300, height: 60)
                .font(.headline)
               
            
            
            
            
            TextEditor(text: $text)   // 文章テキストフィールド
            
                .frame(width: 300, height: 400)  // テキストボックスの範囲
            
                .background(Color(red: 0 , green: 0, blue: 0, opacity: 0.1))  // テキストボックス内の色変更
            
                .border(Color.gray, width: 2) //  テキストボックスのライン
            
                .foregroundColor(.black)  // テキストの色指定
            
            //            .font()  // フォントの指定
            
                .lineSpacing(5)  // 改行間の間隔
            
                .keyboardType(.asciiCapable)
            
            //.URL - URL入力用
            //.numberPad - PIN入力用
            //.phonePad - 電話番号用
            //.emailAddress - アドレスを入力用
            
            Spacer().frame(height: 20)
            
            HStack(spacing: 20) {  // spacing で間隔を開ける
                // テキストの決定・破棄ボタンの配置
                
                Image(systemName: "trash.fill")
                    .frame(width: 140, height: 50, alignment: .center)
                    .background(Color(red: 0 , green: 0, blue: 0, opacity: 0.1))   // フレーム範囲の色変更
                    .shadow(color: .black, radius: 5, x: 3, y: 4)
                    .border(Color.black, width: 1) // .frame範囲の可視化
                    .imageScale(.large) // Image画像を拡大
                
                Image(systemName: "paperplane.fill")
                    .frame(width: 140, height: 50, alignment: .center)
                    .background(Color(red: 0 , green: 0, blue: 0, opacity: 0.1))
                    .shadow(color: .black, radius: 5, x: 3, y: 4)
                    .border(Color.black, width: 1)
                    .imageScale(.large)
                    
               
                
            } // HStack
            
        }// VStack
        
    }// View
    
    
    struct MutteringDiaryView_Previews: PreviewProvider {
        static var previews: some View {
            MutteringDiaryView()
        }
    }
}
