//
//  WriteDiaryView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/22.
//

import SwiftUI

struct WriteDiaryModalView: View {
    var body: some View {
       
        TabView {
            MyWriteDiaryTabView()
            
            .tabItem {
                    Image(systemName: "pencil.slash")
                Text("FirstView")
                }
            
            MyFavoriteDiaryTabView()
                .tabItem {
                    Image(systemName: "suit.heart.fill")
                    Text("FirstView")
                }
            
        }
    }
}

struct WriteDiaryModalView_Previews: PreviewProvider {
    static var previews: some View {
        WriteDiaryModalView()
    }
}
