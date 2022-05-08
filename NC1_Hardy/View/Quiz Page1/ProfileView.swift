//
//  ProfileView.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/03.
//

import SwiftUI

struct ProfileView: View {
    let profileImage: Image = Image("VHardy")
    
    var body: some View {
        HStack{
            ZStack{
            
                Circle().frame(width: 151, height: 151)
                
                profileImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .background(.white)
                    .clipShape(Circle())
            }
            Spacer().frame(width: 20, height: 20)
            
            HStack{
                Text("Hardy").font(.custom("BMYEONSUNG-OTF", size: 45)).padding(.bottom, 1)
                
                Button(action: {
                    
                }){
                    Text("Edit").font(.custom("BMYEONSUNG-OTF", size: 25))
                }
                .padding(EdgeInsets(top: 7, leading: 20, bottom: 7, trailing: 20))
                .foregroundColor(.white)
                .background(Color.customGreen)
                .cornerRadius(20)
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
