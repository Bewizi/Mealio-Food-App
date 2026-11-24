//
//  HomeScreen.swift
//  Mealio Food App
//
//  Created by Toluwalase on 23/11/2026.
//

import SwiftUI

struct HomeScreen: View {
    @State private var searchText = ""
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                HStack(spacing: 8){
                    //            avatar
                    ZStack{
                        Image("profile")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 48, height: 48)
                    }
                    VStack(alignment:.leading, spacing: 8){
                        //            welcome message
                        AppText(title: "Welcome Back", fontSize: 12, textColor: Color("grey"), custom: "Roboto-Regular")
                        //            usersname
                        AppText(title: "Topsysammy", fontSize: 14, textColor: Color("black"), custom: "Roboto-Medium")
                    }
                }
                
                Spacer()
                
//                notification
                ZStack{
                    Circle()
                        .fill(Color("grey").opacity(0.1))
                        .frame(width: 48, height: 48)
                    Image(systemName: "bell")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.black)
                        .frame(width: 24, height: 24)
                    Circle()
                            .fill(.red)
                            .frame(width: 8, height: 8)
                            .offset(x: 5, y: -8)
                }
            }
            .padding(.bottom, 20)

            HStack(spacing: 12) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 24))
                    .foregroundColor(Color("grey"))

                TextField(
                    "Search for Restaurants and dishes.....",
                    text: $searchText
                )
                .font(.system(size: 16))
                .foregroundColor(.black)

                Divider()
                    .frame(height: 32)

                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 20)
            .frame(height: 50)
            .background(Color("grey").opacity(0.15))
            .clipShape(Capsule())
            .padding(.bottom, 20)
            
            ScrollView(.vertical, showsIndicators: false){
                ZStack(alignment: .leading){
                    Image("food-ready")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                    
                    VStack(alignment:.leading, spacing: 8){
                        //            welcome message
                        AppText(title: "Free delivery today", fontSize: 16, textColor: .white, custom: "Roboto-Bold")
                        //            usersname
                        AppText(title: "For every meals order today, you’ll get free deliveries with no hidden charges", fontSize: 10, textColor: .white,textAlignment: .leading, custom: "Roboto-Regular",)
                            .padding(.bottom, 16)
                        
                        Button{
                            
                        }label: {
                            AppText(title: "Order Now", fontSize: 12,  textColor: Color("primary"), custom: "Roboto-Medium",)
                        }
                        .padding(.vertical,13)
                        .frame(maxWidth: 127, alignment: .center)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 42))
                        
                    }
                    .padding(.horizontal, 10)
                    .frame(maxWidth: 200)
                }
                .padding(.bottom, 20)
                
                CategoryFilterBar()
                    .padding(.bottom, 20)
                ExploreRestaurantsSection()
                    .padding(.bottom, 20)
                PopularMeals()
            }
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: .infinity)
        .background(Color("white"))
        
    }
}

#Preview {
    HomeScreen()
}
