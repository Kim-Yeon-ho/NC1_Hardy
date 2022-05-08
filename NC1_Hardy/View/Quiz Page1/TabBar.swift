//
//  TabBar.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/06.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        Image("tabBar").resizable().frame(width: 400, height: 50)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
