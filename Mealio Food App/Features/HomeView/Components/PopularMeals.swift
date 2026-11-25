//
//  PopularMeals.swift
//  Mealio Food App
//
//  Created by Toluwalase on 24/11/2026.
//

import SwiftUI

struct PopularMeals: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 18){
            AppText(title: "Popular Meals", fontSize: 15, textAlignment: .leading, custom: "Roboto-Medium")
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 30){
                    VStack(alignment: .leading, spacing: 10){
                        ZStack {
                            Image("fish-chips")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300)
                                .overlay(alignment: .topTrailing){
                                    
                                        Image("hugeicons_favourite")
                                            .resizable()
                                            .scaledToFit()
                                            .padding()
                                            .background(
                                                Circle()
                                                    .fill(.graphite).opacity(0.15)
                                            )
                                            .frame(width: 60, height: 60)
                                            .padding(.top, 8)
                                            .padding(.trailing, 4)
                                }
                        }
                        .padding(.bottom, 10)
                        
                        VStack{
                            HStack{
                                AppText(title: "Fish and Chips", fontSize: 15, custom: "Roboto-SemiBold")
                                Spacer()
                                AppText(title: "$100.00", fontSize: 15, custom: "Roboto-Medium")
                                
                            }
                            .padding(.bottom, 6)
                            
                            HStack{
                                HStack(spacing: 5){
        //                            icon
                                    Image("weui_time-outlined")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    AppText(title: "20-30 mins", fontSize: 10, textColor: .grey, custom: "Roboto-Regular")
                                }
                                Spacer()
                                HStack(spacing: 5){
        //                            icon
                                    Image("Star")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    AppText(title: "5.0", fontSize: 10, textColor: .grey, custom: "Roboto-Regular")
                                }
                            }
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10){
                        ZStack
                        {
                            Image("roasted-chicken")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300)
                        }
                        .padding(.bottom, 10)
                        
                        VStack(alignment: .leading){
                            HStack{
                                AppText(title: "Roasted chicken", fontSize: 15, custom: "Roboto-SemiBold")
                                
                                
                            }
                            .padding(.bottom, 6)
                            
                            HStack{
                                HStack(spacing: 5){
        //                            icon
                                    Image("weui_time-outlined")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    AppText(title: "20-30 mins", fontSize: 10, textColor: .grey, custom: "Roboto-Regular")
                                }
                            }
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    PopularMeals()
}
