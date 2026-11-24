//
//  CategoryFilterBar.swift
//  Mealio Food App
//
//  Created by Toluwalase on 24/11/2026.
//

import SwiftUI

struct CategoryFilterBar: View {
    @State private var selectedCategory = "All"

    let filterBar = [
        "All",
        "Restaurant",
        "Local",
        "Fine dinning",
        "Documentary",
    ]
    
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 28) {
                    ForEach(filterBar, id: \.self) { category in
                        let isActive = selectedCategory == category
                        
                        Button{
                            selectedCategory = category
                        }label: {
                            AppText(title: category, fontSize: 14, textColor: isActive ? .white : .grey, custom: "Roboto-SemiBold" )
                        }
                        .padding()
                        .background(isActive ? Color("primary") : Color("platinum"))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryFilterBar()
}
