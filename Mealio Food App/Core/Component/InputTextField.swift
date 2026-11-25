//
//  InputTextFeild.swift
//  Mealio Food App
//
//  Created by Toluwalase on 25/11/2026.
//

import SwiftUI

struct InputTextField: View {
    let placeholder: String
    let textFieldName: String
    let errorMessage: String?
    @Binding var text: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            AppText(
                title: textFieldName,
                fontSize: 12,
                custom: "Roboto-Medium"
            )
            
            HStack(spacing: 12) {
                TextField(
                    placeholder,
                    text: $text
                )
                .font(.custom("Roboto-Regular", size: 14))
                .foregroundColor(.black)
                .autocorrectionDisabled(true)
                
            }
            .padding(.horizontal, 20)
            .frame(height: 50)
            .background(Color("grey").opacity(0.15))
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(
                        errorMessage == nil ? .clear : .error,
                        lineWidth: 1
                    )
            )
            .padding(.bottom, 20)
            
            if let errorMessage {
                AppText(title: errorMessage, fontSize: 12, textColor: .error, custom: "Roboto-Regular")
            }
        }
    }
}

struct InputPasswordField: View {
    let placeholder: String
    let passwordFieldName: String
    let errorMessage: String?
    @Binding var password: String
    @State private var showPassword = false
    var body: some View {
        VStack(alignment: .leading){
            AppText(
                title: passwordFieldName,
                fontSize: 12,
                custom: "Roboto-Medium"
            )
            HStack{
                if showPassword{
                    TextField(placeholder, text: $password)
                        .font(.custom("Roboto-Regular", size: 14))
                        .foregroundColor(.black)
                        .autocorrectionDisabled(true)
                }else{
                    SecureField(placeholder, text: $password)
                        .font(.custom("Roboto-Regular", size: 14))
                        .foregroundColor(.black)
                        .autocorrectionDisabled(true)
                }
                    
                    
                
                Image(systemName: showPassword ? "eye.circle" : "eye.slash.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .onTapGesture {
                        showPassword.toggle()
                    }
            }
            .padding(.horizontal, 20)
            .frame(height: 50)
            .background(Color("grey").opacity(0.15))
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(
                        errorMessage == nil ? .clear : .error,
                        lineWidth: 1
                    )
            )
            .padding(.bottom, 20)
            
            if let errorMessage {
                AppText(title: errorMessage, fontSize: 12, textColor: .error, custom: "Roboto-Regular")
            }
        }
        
    }
}

#Preview {
    InputPasswordField(
        placeholder: "Search for Restaurants and dishes.....",
        passwordFieldName: "Create Password:",
        errorMessage: "Invalid Input",
        password: .constant("Enter Your Password")
    )
}

#Preview {
    InputTextField(
        placeholder: "Search for Restaurants and dishes.....",
        textFieldName: "Email:",
        errorMessage: "Invalid email",
        text: .constant("Hello World"))
}
