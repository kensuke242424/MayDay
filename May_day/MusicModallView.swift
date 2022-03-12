//
//  WriteDiaryView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/22.
//

import SwiftUI

struct MusicModalView: View {
    
    let musicplayer = SoundPlayer()
    
    
    
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
                    
                    
                    Button(action:{
                        
                        musicplayer.musicPlayer1()
                        
                        
                        
                    }) {
                        Text("音楽1")
                            
                    }
                    
                    Button(action:{
                        musicplayer.musicPlayer2()
                        
                        
                    }) {
                        Text("音楽2")
                    }
                    
                    Button(action:{
                        musicplayer.musicPlayer3()
                    }) {
                        Text("音楽3")
                    }
                    
                }
                
                List {
                    
                    Text("環境音")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    Button(action:{}) {
                        Text("焚き火")
                    }
                    
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
