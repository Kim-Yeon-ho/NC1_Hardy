//
//  Recodestruct.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

struct RecodeStruct: View {
    let index : Int
    
    var body: some View {
        VStack{
            ZStack {
                             
                HStack{
                    ZStack {
                    
                        Image("\(RunDatas[index].runImages)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.black))
                    }
                    VStack{
                        Text("\(RunDatas[index].runKinds)").font(.custom("BMYEONSUNG-OTF", size: 18)).padding(.top, 1.0)
                        
                        Text("\(RunDatas[index].runMeters)").font(.custom("BMYEONSUNG-OTF", size: 30))
                            .foregroundColor(Color.customOrange).padding(.bottom, 1.0 )
                    }.padding()
                    
                    Text("\(RunDatas[index].runDates)").font(.custom("BMYEONSUNG-OTF", size: 16)).padding([.top, .leading], 25.0)
                }
            }
        }
    }


struct Recodestruct_Previews: PreviewProvider {
    static var previews: some View {
        RecodeStruct(index: 0)
    }
}
}
