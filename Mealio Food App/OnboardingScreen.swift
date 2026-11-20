//
//  OnboardingScreen.swift
//  Mealio Food App
//
//  Created by Toluwalase on 20/11/2026.
//

import SwiftUI

struct OnboardingScreen: View {
    
    var body: some View {
        VStack{
            Image("Delivery_at_the_Doorstep")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 350, alignment: .center)
            VStack(spacing: 8){
                AppText(title: "Welcome to Mealio 🍽️", fontSize: 24,  textColor: Color("black"), fontWeight: .regular,)
                AppText(title: "Discover your favorite meals and get them delivered fast and fresh.", fontSize: 20,  textColor: Color("grey"), fontWeight: .regular,)
                    .lineHeight(.leading(increase: 8))
            }
            .padding(.bottom, 64)
            
                HStack{
                    ProgressIndicator(color: Color("success"))
                    ProgressIndicator(color: Color("grey").opacity(0.3))
                }
                .padding(.bottom, 23)
                
                VStack(spacing: 24){
                    Button{
                        
                    }label: {
                        AppText(title: "Next", fontSize: 16,  textColor: Color("white"), fontWeight: .bold,)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("success"))
                    .clipShape(RoundedRectangle(cornerRadius: 42))
                    
                    Button{
                        
                    }label: {
                        AppText(title: "Skip", fontSize: 16,  textColor: Color("success"), fontWeight: .bold,)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("ghost").opacity(0.20))
                    .clipShape(RoundedRectangle(cornerRadius: 42))
                }
                
            
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct ProgressIndicator: View {
    @State private var isActive = false
    @State var color = Color("success")
    var body: some View {
            VStack{
                color
            }
            .frame(width: 34, height: 6)
            .clipShape(RoundedRectangle(cornerRadius: 100))
    }
}





#Preview {
    OnboardingScreen()
}
