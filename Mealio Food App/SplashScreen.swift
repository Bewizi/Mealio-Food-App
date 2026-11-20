//
//  SplashScreen.swift
//  Mealio Food App
//
//  Created by Toluwalase on 17/11/2026.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color("white")
                .ignoresSafeArea()

            Image("spc bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .clipped()

            // Your logo / splash content here
            HStack(alignment: .center, spacing: 8){
                Image("fork-and-knife-with-plate")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 42, height: 42, alignment: .center)
                AppText(title: "mealio", fontSize: 42, fontWeight: .semibold, )
            }
        }

    }
}

#Preview {
    SplashScreen()
}
