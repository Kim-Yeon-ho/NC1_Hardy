//
//  CorrectCircle.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/06.
//

import SwiftUI

struct CorrectCircle: View {
    @State public var completionAmount: CGFloat = 0.0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        Circle()
            .trim(from: 0, to: completionAmount)
            .stroke(Color.red, lineWidth: 20)
            .frame(width: 50, height: 50)
    }
}

struct CorrectCircle_Previews: PreviewProvider {
    static var previews: some View {
        CorrectCircle()
    }
}
