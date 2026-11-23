//
//  SignupScreen.swift
//  Mealio Food App
//
//  Created by Toluwalase on 23/11/2026.
//

import SwiftUI

struct SignupScreen: View {
    @State private var email = ""
    
    var body: some View {
        ZStack(alignment: .leading){
            Color("primary")
            
            RoundedRectangle(cornerRadius: 34)
                    .fill(Color("darkGreen"))
                    .frame(height: .infinity)
                    .offset(y: 100)
            VStack(alignment: .leading, spacing: 8){
                
                AppText(title: "Sign up", fontSize: 32, textColor: Color("black"), custom: "Roboto-SemiBold")
                AppText(title: "Enter your details below", fontSize: 16, textColor: Color("grey"), custom: "Roboto-Regular")
                
                TextField( "Your email", text: $email)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 56)
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 34))
            .offset(y: 120)
            
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SignupScreen()
}
