//
//  OnboardingScreen.swift
//  Mealio Food App
//
//  Created by Toluwalase on 20/11/2026.
//

import SwiftUI

struct OnboardingScreen: View {
    @State var currentPage = 0
    
    func nextPage(){
        if currentPage < 1{
            currentPage += 1
        }
    }
    var body: some View {
        NavigationStack{
            VStack{
                TabView(selection: $currentPage){
                    OnboardingView(
                        image: "Delivery_at_the_Doorstep",
                        title: "Welcome to Mealio 🍽️",
                        subTitle: "Discover your favorite meals and get them delivered fast and fresh.",
                        currentPage: currentPage,
                        pageIndex: 0
                    )
                    .tag(0)
                    
                    
                    OnboardingView(
                        image: "eat_happily",
                        title: "Order Easily, Eat Happily",
                        subTitle: "Track your orders in real-time and enjoy quick, secure checkout.",
                        currentPage: currentPage,
                        pageIndex: 1
                        
                    )
                    .tag(1)
                }
                .tabViewStyle(.page)
                .padding(.bottom, 64)
                
                ProgressIndicator(currentPage: currentPage)
                
                VStack(spacing: 24){
                    Button{
                        nextPage()
                    }label: {
                        AppText(title: "Next", fontSize: 16,  textColor: Color("white"), custom: "Roboto-SemiBold",)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("success"))
                    .clipShape(RoundedRectangle(cornerRadius: 42))
                    
                    NavigationLink{
                        NavigationBar()
                            .navigationBarBackButtonHidden()
                    }label: {
                        AppText(title: "Skip", fontSize: 16,  textColor: Color("success"), custom: "Roboto-SemiBold",)
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
}

struct ProgressIndicator: View {
    let currentPage: Int
    var body: some View {
        
        HStack{
            ForEach(0..<2){
                index in
                Capsule()
                    .fill(index == currentPage ? Color("success") : Color("grey").opacity(0.5))
                    .frame(width: 34, height: 6)
                    .clipShape(RoundedRectangle(cornerRadius: 100))
            }
        }
        .padding(.bottom, 23)
    }
}

struct OnboardingView: View {
    let image: String
    let title: String
    let subTitle: String
    
    let currentPage: Int
    let pageIndex: Int
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 350, alignment: .center)
                .padding(.bottom, 49)
            VStack(spacing: 8){
                AppText(title: title, fontSize: 24,  textColor: Color("black"), custom: "Roboto-SemiBold",)
                AppText(title: subTitle, fontSize: 20,  textColor: Color("grey"), custom: "Roboto-Regular",)
                    .lineHeight(.leading(increase: 8))
            }
        }
    }
}






#Preview {
    OnboardingScreen()
}
