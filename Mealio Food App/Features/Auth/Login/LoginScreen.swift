//
//  LoginScreen.swift
//  Mealio Food App
//
//  Created by Toluwalase on 25/11/2026.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var email = ""
    @State private var password = ""
    
    @State private var errorMessage: String?
    @State private var passwordMessage: String?
    
    var body: some View {
        ZStack{
            Color("primary")
            
            RoundedRectangle(cornerRadius: 34)
                    .fill(Color("darkGreen"))
                    .frame(height: .infinity)
                    .offset(y: 100)
            
            VStack(alignment: .leading, spacing: 8){
                ScrollView( showsIndicators: false,){
                    VStack(alignment: .leading, spacing: 8){
                        AppText(title: "Login", fontSize: 32, textColor: Color("black"), custom: "Roboto-SemiBold")
                        AppText(title: "Enter your details below", fontSize: 16, textColor: Color("grey"), custom: "Roboto-Regular")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 33)
                    
                    VStack(alignment: .leading){
                        InputTextField(placeholder: "Your email", textFieldName: "Email:",
                                       errorMessage: errorMessage,
                                       text: $email)
                        
                        VStack(alignment: .trailing, spacing: -8){
                            InputPasswordField(placeholder: "Enter your password", passwordFieldName: "Create Password:", errorMessage: passwordMessage, password: $password)
                            
                            NavigationLink{
                            ResetPassword()
                                    .navigationBarBackButtonHidden()
                            }label:{
                                AppText(
                                    title: "Forget Password?",
                                    fontSize: 12,
                                    textColor: .black,
                                    custom: "Roboto-Medium"
                                )
                            }
                            
                        }
                        .padding(.bottom, 20)
                        
                        Button{
                            
                        }label: {
                            AppText(title: "Login", fontSize: 16,  textColor: Color("white"), custom: "Roboto-SemiBold",)
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
                            title:"Don’t have an account?",
                            fontSize: 16,
                            textColor: .black,
                            custom: "Roboto-Bold"
                        )
                        NavigationLink{
                            SignupScreen()
                                .navigationBarBackButtonHidden()
                        }label:{
                            AppText(
                                title: "Sign up",
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



#Preview {
    LoginScreen()
}
