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
    
//    error message display
    @State private var emailError: String?
    @State private var passwordError: String?
    @State private var confirmPasswordError: String?
    
    @State private var isSigningUp = false
    
    @FocusState private var emailFieldIsFocused: Bool
    
    
    func validateSignup(){
        if email.isEmpty {
            emailError = "Email is required"
        } else if !email.contains("@") {
            emailError = "Enter a valid email address"
        } else {
            emailError = nil
        }

        if password.count < 8 {
            passwordError = "Password must contain 8 characters"
        } else {
            passwordError = nil
        }

        if confirmPassword != password {
            confirmPasswordError = "The password you entered doesn’t match"
        } else {
            confirmPasswordError = nil
        }
    }
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
                        InputTextField(placeholder: "Your email", textFieldName: "Email:",
                                       errorMessage: emailError,
                                       text: $email)
                            .focused($emailFieldIsFocused, equals: true)
                        
                        InputPasswordField(placeholder: "Enter your password", passwordFieldName: "Create Password:", errorMessage: passwordError, password: $password)
                        
                        InputPasswordField(placeholder: "Enter your password", passwordFieldName: "Confirm Password:", errorMessage: confirmPasswordError, password: $confirmPassword)
                        
                        
                        
                        Button{
                          validateSignup()
                            
                            
                            if emailError == nil &&
                                passwordError == nil &&
                                confirmPasswordError == nil {
                                
                                print("Signup Success")
                            }
                        }label: {
                            if isSigningUp{
                                ProgressView()
                            }else{
                                AppText(title: "Create Account", fontSize: 16,  textColor: Color("white"), custom: "Roboto-SemiBold",)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color("success"))
                        .clipShape(RoundedRectangle(cornerRadius: 42))
                        .disabled(isSigningUp)
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
                            LoginScreen()
                                .navigationBarBackButtonHidden()
                            
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
