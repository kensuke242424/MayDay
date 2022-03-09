//
//  WriteDiaryView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/22.
//

import SwiftUI

struct MusicModalView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("BGM設定")
                .font(.largeTitle)
                .bold()
                .padding([.leading, .trailing, .top], 25)
            VStack {
                
                
                
                List {
                    
                    Text("音楽")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    Text("音楽１")
                    Text("音楽２")
                    Text("音楽３")
                    
                }
                
                List {
                    
                    Text("環境音")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    Text("焚き火")
                    
                }
            }
            
        }
    }
}

struct MusicModalView_Previews: PreviewProvider {
    static var previews: some View {
        MusicModalView()
    }
}
