import SwiftUI

struct AutoSlide: View {
    let imageNames = ["ChatImage", "ChatImage2", "ChatImage3"]
    let texts = ["Make every chat count", "Ensure each conversation matters", "Maximize the value of every interaction"]
    
    @State private var currentIndex = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<imageNames.count, id: \.self) { index in
                VStack {
                    Image(imageNames[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 250)
                        .shadow(radius: 10)
                        .shadow(color: .black, radius: 5, x: 0, y: 5)
                    
                    Text(texts[index])
                        .foregroundStyle(.white)
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                        .frame(width: 350)
                        .multilineTextAlignment(.center)
                        .shadow(color: .black, radius: 5, x: 0, y: 5)
                }
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .onAppear {
            currentIndex = 0  // Start from the first tab when the view appears
        }
        .onReceive(timer) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % imageNames.count
            }
        }
    }
}

#Preview {
    AutoSlide()
}
