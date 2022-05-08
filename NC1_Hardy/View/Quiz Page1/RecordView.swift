//
//  RecordView.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

struct RecordView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20).fill(Color.customGreen)
            .frame(width: 350, height: 600)
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
