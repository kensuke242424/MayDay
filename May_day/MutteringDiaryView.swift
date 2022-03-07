//
//  MutteringDiaryView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/24.
//

import SwiftUI



struct MutteringDiaryView: View {
    
    @State var text: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
        
        TextField("今日はどんな日？", text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding(30)
            .keyboardType(.asciiCapable)
            .border(Color(UIColor.separator))
            .background(Color(red: 0, green: 0, blue: 0, opacity: 0.1))
            .frame(width: 300)
        }
    }
}

struct MutteringDiaryView_Previews: PreviewProvider {
    static var previews: some View {
        MutteringDiaryView()
    }
}
