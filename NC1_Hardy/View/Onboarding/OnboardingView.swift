
import SwiftUI

struct OnboardingView: View {
    @Binding var isFirstLaunching : Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white).padding(.horizontal, horizontalpadding)
                .frame(width: 300, height: 570)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.customGreen))
            
            VStack {
                Image(systemName: "magnifyingglass")
                    .font(.custom("BMYEONSUNG-OTF", size: 150))
                
                Text("  앱에서 나오는 화면에서\n      HIG에 어긋난다고 \n   생각되는 틀린 HIG림을\n 두번 클릭해서 찾아주세요!").font(.custom("BMYEONSUNG-OTF", size: 32))
                    .padding(.vertical)
                
                Spacer().frame(width: 30, height: 40)
                
                Button {
                    isFirstLaunching.toggle()
                } label: {
                    Text("찾으러가기!").font(.custom("BMYEONSUNG-OTF", size: 30))
                        .foregroundColor(.customOrange)
                }
            }
            
           
            
            
            
        }
    }
}

