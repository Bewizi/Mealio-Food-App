//
//  SignupScreen.swift
//  Mealio Food App
//
//  Created by Toluwalase on 23/11/2026.
//

import SwiftUI

struct SignupScreen: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    
    var body: some View {
        ZStack(alignment: .leading){
            Color("primary")
            
            RoundedRectangle(cornerRadius: 34)
                    .fill(Color("darkGreen"))
                    .frame(height: .infinity)
                    .offset(y: 100)
            
            VStack(alignment: .leading, spacing: 8){
                ScrollView( showsIndicators: false,){
                    VStack(alignment: .leading, spacing: 8){
                        AppText(title: "Sign up", fontSize: 32, textColor: Color("black"), custom: "Roboto-SemiBold")
                        AppText(title: "Enter your details below", fontSize: 16, textColor: Color("grey"), custom: "Roboto-Regular")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 33)
                    
                    VStack(alignment: .leading){
                        InputTextField(placeholder: "Your email", textFieldName: "Email:", text: $email)
                        
                        InputPasswordField(placeholder: "Enter your password", passwordFieldName: "Create Password:", password: $password)
                        
                        InputPasswordField(placeholder: "Enter your password", passwordFieldName: "Confirm Password:", password: $confirmPassword)
                        
                        Button{
                            
                        }label: {
                            AppText(title: "Create Account", fontSize: 16,  textColor: Color("white"), custom: "Roboto-SemiBold",)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color("success"))
                        .clipShape(RoundedRectangle(cornerRadius: 42))
                    }
                    .padding(.bottom, 20)
                    
                    SignupOption()
                        .padding(.bottom, 36)
                    
                    HStack(alignment: .center){
                        AppText(
                            title:"Already Account ?",
                            fontSize: 16,
                            textColor: .black,
                            custom: "Roboto-Bold"
                        )
                        NavigationLink{
                            
                            
                        }label:{
                            AppText(
                                title: "Login",
                                fontSize: 16,
                                textColor: Color("primary"),
                                custom: "Roboto-Bold"
                            )
                        }
                    }
                    .padding(.bottom, 100)
                }
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

struct SignupOption: View {
    var body: some View {
        VStack(spacing: 28){
            HStack{
                Rectangle()
                    .fill(Color("grey"))
                    .frame(height: 1)
                
                AppText(title: "or continue with", fontSize: 12, textColor: .grey, custom: "Roboto-Regular")
                
                Rectangle()
                    .fill(Color("grey"))
                    .frame(height: 1)
            }
            
            Button{
                
            }label: {
                HStack(spacing: 13){
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    
                    AppText(title: "Continue with Google", fontSize: 16,  textColor: Color("primary"), custom: "Roboto-SemiBold",)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color("ghost").opacity(0.20))
            .clipShape(RoundedRectangle(cornerRadius: 42))
            
            Button{
                
            }label: {
                HStack(spacing: 13){
                Image("apple")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    
                    AppText(title: "Continue with Apple", fontSize: 16,  textColor: Color("primary"), custom: "Roboto-SemiBold",)
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color("ghost").opacity(0.20))
            .clipShape(RoundedRectangle(cornerRadius: 42))
        }
    }
}

#Preview {
    SignupScreen()
}
