//
//  ResetPassword.swift
//  Mealio Food App
//
//  Created by Toluwalase on 26/11/2026.
//

import SwiftUI

struct ResetPassword: View {
    @State private var email = ""
    @State private var emailError: String?
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack(alignment: .leading){
            Color("primary")
            
            RoundedRectangle(cornerRadius: 34)
                .fill(Color("darkGreen"))
                .frame(height: .infinity)
                .offset(y: 100)
            
            VStack(alignment: .leading, spacing: 8){
                VStack(alignment: .leading, spacing: 8){
                    AppText(title: "Reset Password", fontSize: 32, textColor: Color("black"), custom: "Roboto-SemiBold")
                    AppText(title: "Please enter the email address associated with your account.", fontSize: 16, textColor: Color("grey"), textAlignment: .leading, custom: "Roboto-Regular",)
                }
                .padding(.bottom, 24)
                
//                email
                InputTextField(placeholder: "Your email", textFieldName: "Email:", errorMessage: emailError, text: $email)

            }
            .padding(.horizontal, 20)
            .padding(.vertical, 56)
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 34))
            .offset(y: 120)
        }
        .safeAreaInset(edge: .bottom){
            HStack(spacing: 52){
                Button{
                    dismiss()
                }label: {
                    AppText(title: "Back", fontSize: 16,  textColor: Color("primary"), custom: "Roboto-SemiBold",)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                .background(
                    RoundedRectangle(cornerRadius: 42)
                        .stroke(Color("primary"), lineWidth: 1 )
                )
                
                Spacer()
                
                Button{
                    
                }label: {
                    AppText(title: "Continue", fontSize: 16,  textColor: Color("white"), custom: "Roboto-SemiBold",)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color("success"))
                .clipShape(RoundedRectangle(cornerRadius: 42))
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 80)
            
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    ResetPassword()
}
