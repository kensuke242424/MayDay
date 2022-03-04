//
//  CheckDiaryView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/22.
//

import SwiftUI

struct CheckDiaryModalView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("日記")
                    .font(.title)
                    .bold()
                    .padding([.leading, .trailing, .top], 25)
                
                Spacer().frame(width: 210)
                
                Image(systemName: "calendar")
                    .imageScale(.large)
                    .padding([.leading, .trailing, .top], 25)
                    .frame(width: 40, height: 40)
            } // HStack
            
            NavigationView {
                
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
    }
}

struct CheckDiaryModalView_Previews: PreviewProvider {
    static var previews: some View {
        CheckDiaryModalView()
    }
}
