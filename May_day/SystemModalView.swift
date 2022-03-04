//
//  ModalView.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/22.
//

import SwiftUI

struct SystemModalView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("システム設定")
                .font(.title)
                .bold()
                .padding([.leading, .trailing, .top], 25)
            VStack {
                
                List {
                    
                    Text("システム１")
                    Text("システム２")
                    Text("システム３")
                    Text("システム４")
                    Text("システム５")
                    Text("システム6")
                    Text("システム７")
                    
                }
            }
            
        }
    }
}
    struct SystemModalView_Previews: PreviewProvider {
        static var previews: some View {
            SystemModalView()
        }
    }
