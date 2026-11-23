//
//  HomeScreen.swift
//  Mealio Food App
//
//  Created by Toluwalase on 23/11/2026.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                HStack(spacing: 8){
                    //            avatar
                    Circle()
                        .fill(Color.success)
                        .frame(width: 48, height: 48)
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
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: .infinity)
        .background(.white)
        
    }
}

#Preview {
    HomeScreen()
}
