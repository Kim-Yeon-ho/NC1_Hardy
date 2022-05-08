//
//  start_Button.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

struct StartButtonView: View {
   @State var randomPage: Int = 0
    init() {
        randomPage = Int.random(in: 0...1)
    }
    //1~3까지 값을 랜덤으로 지정해줘서 각 페이지로 랜덤으로 이동 할 수 있게 함
    
    var body: some View {
        NavigationLink {
            //랜덤값으로 페이지 갈 수 있도록 코드짜야함
            
            switch randomPage {
            case 0:
                Page1View().navigationBarHidden(false)
            default:
                Page2View()
            }
            
        } label: {
            Image("start").resizable()
                .frame(width: 100, height: 50)
        }.onAppear {
            self.randomPage = Int.random(in: 0...1)
        }
    }
}
struct startButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
