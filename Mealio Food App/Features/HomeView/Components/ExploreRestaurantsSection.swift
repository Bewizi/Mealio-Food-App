//
//  ExploreRestaurantsSection.swift
//  Mealio Food App
//
//  Created by Toluwalase on 24/11/2026.
//

import SwiftUI

struct Restaurant {
    let image: String
    let name: String
}

struct ExploreRestaurantsSection: View {
    
    let restaurants = [
        Restaurant(image: "mr-bolats-logo", name: "Mr Bolat Pizza"),
        Restaurant(image: "mamys-dishes-logo", name: "Mamy's Dishes"),
        Restaurant(image: "coco-cuisine-logo", name: "Coco Cuisine"),
        Restaurant(image: "abacha-cuisine-logo", name: "Abacha Cuisine"),
        Restaurant(image: "esters-kitchen-logo", name: "Esther's Kitchen")
    ]
    
    var body: some View {
        VStack(spacing: 14){
            HStack{
                AppText(title: "Explore Restaurants", fontSize: 16, custom: "Roboto-Medium")
                
                Spacer()
                
                Image("weui_back-outlined")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 28) {
                    ForEach(restaurants, id: \.name) { category in
                        VStack(spacing: 8){
                            Image(category.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .clipShape(Circle())
                            
                                AppText(
                                    title: category.name,
                                    fontSize: 12,
                                    textColor: .black,
                                    custom: "Roboto-Regular"
                                )
                                .frame(maxWidth: 75)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreRestaurantsSection()
}
