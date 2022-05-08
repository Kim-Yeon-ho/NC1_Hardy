import SwiftUI
let horizontalpadding = 25.0

struct SegmentedView: View {
    @State private var showCircle = false
    @State private var selectedPickers = ""
    var correctCircle: CorrectCircle = CorrectCircle()
    let pickers = ["🏃🏻", "🍺", "LifeRutin"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.gray
        
        let attributes: [NSAttributedString.Key:Any] = [.foregroundColor : UIColor.black
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        
        ZStack {
            Picker("", selection: $selectedPickers){
                ForEach(0 ..< 3){
                    Text(self.pickers[$0]).tag(self.pickers[$0])
                }
            }.pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, horizontalpadding)
        }
        
        switch selectedPickers {
        case "LifeRutin":
            
            Image("tabBar").resizable().frame(width: 400, height: 50)
        case "🍺":
            ZStack{
                Rectangle().fill(Color.white)
                    .frame(width: 400, height: 490)
                ProgressView().scaleEffect(anchor: .center)
                    .progressViewStyle(CircularProgressViewStyle())
            }
            Image("tabBar").resizable().frame(width: 400, height: 50).visibility(.invisible)
        default:
            List(0..<RunDatas.count, id: \.self) { index in
                RecodeStruct(index: index)
            }
            .listStyle(.plain).listRowBackground(Color.customOrange).frame(width: 400, height: 490)
            
            ZStack {
                Image("tabBar").resizable().frame(width: 400, height: 50).onTapGesture {   showCircle = true                 }
                if showCircle {
                    CorrectCircle().offset(x: 0, y: -10)
                }
            }
        }
    }
}


struct SegmentedView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedView()
    }
}


struct CorrectCircle: View {
    @State public var completionAmount: CGFloat = 0.0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        Circle()
            .trim(from: 0, to: completionAmount)
            .stroke(Color.red, lineWidth: 5)
            .frame(width: 50, height: 50)
            .rotationEffect(.degrees(-90))
            .onReceive(timer) { _ in
                withAnimation {
                    if completionAmount == 1 {
                        completionAmount = 0
                    } else {
                        completionAmount += 1
                    }
                }
            }.zIndex(1)
    }
}
