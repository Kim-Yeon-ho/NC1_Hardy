//
//  Page2_View.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

struct Page2View: View {
    @State private var circleHidden: Bool = false
        //타이머 설정
    var body: some View {

        ZStack{
            Text("추후에 문제가 추가 될 예정입니다!")
                .onTapGesture(count: 2, perform: {
              
            })
            
        }
    }
}

struct Page2View_Previews: PreviewProvider {
    static var previews: some View {
        Page2View()
    }
}

struct CorrectCircle2: View {
    @State public var completionAmount: CGFloat = 0.0

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        Circle()
            .trim(from: 0, to: completionAmount)
            .stroke(Color.red, lineWidth: 5)
            .frame(width: 50, height: 50)
            .rotationEffect(.degrees(-90))
            .onReceive(timer) { _ in
                withAnimation {
                    if completionAmount == 1 {
                        completionAmount = 0
                    } else {
                        completionAmount += 1
                    }
                }
            }.zIndex(1)
    }
}
