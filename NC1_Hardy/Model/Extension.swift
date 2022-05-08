//
//  Extension.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

extension Color{
    static let customGreen = Color("mainColor")
    static let customOrange = Color("thirdColor")
}

enum ViewVisibility: CaseIterable {
  case visible,
       invisible,
       gone
}

extension View {
  @ViewBuilder func visibility(_ visibility: ViewVisibility) -> some View {
    if visibility != .gone {
      if visibility == .visible {
        self
      } else {
        hidden()
      }
    }
  }
}
//extension Font{
//    static let customBM = Font.init(CTFont("BMYEONSUNG-OTF", size: 45))
//}
