//
//  ContentView.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("Title").resizable()
                    .frame(width: 300, height: 300)
                
                Spacer().frame(height:150)
                StartButtonView()
                Spacer().frame(height: 50)

            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
