import SwiftUI


struct AppRootView: View {
  @State private var isSplash = true
    var body: some View {
        Group {
            if isSplash{
                SplashScreen()
            }else{
                OnboardingScreen()
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 10){
                withAnimation(.easeInOut){
                    isSplash = false
                }
            }
        }
    }
}

#Preview {
    AppRootView()
}

