//
//  Page1_View.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

struct Page1View: View {
    init(){
        UITableView.appearance().backgroundColor = UIColor(Color.clear)
    }
    
    var body: some View {
        
        
            VStack{
                ProfileView()
                SegmentedView()
            }
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View()
    }
}


