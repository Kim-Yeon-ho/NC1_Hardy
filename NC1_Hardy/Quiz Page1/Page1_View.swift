//
//  Page1_View.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

struct Page1_View: View {
    var body: some View {
        VStack{
            HStack{
                Text("hihihi")
                VStack{
                    Text("hihihi")
                    Text("hihihi")
                }
            }
            HStack{
                Text("hihihi")
                Text("hihihi")
                Text("hihihi")
            }
            RecordView()
        }
    }
}

struct Page1_View_Previews: PreviewProvider {
    static var previews: some View {
        Page1_View()
    }
}

struct RecordView: View {
    var body: some View {
        Text("hihihi")
    }
}
