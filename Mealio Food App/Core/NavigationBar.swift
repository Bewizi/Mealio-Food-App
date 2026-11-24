//
//  NavigationBar.swift
//  Mealio Food App
//
//  Created by Toluwalase on 24/11/2026.
//

import SwiftUI

struct NavigationBar: View {
    @State private var selectedTab = 0
    var body: some View {
        NavigationStack{
            VStack(spacing: 0) {
                
                // Content
                Group {
                    switch selectedTab {
                    case 0:
                        HomeScreen()
                        
                    case 1:
                        ExploreScreen()
                        
                    case 2:
                        CartScreen()
                        
                    case 3:
                        OrdersScreen()
                        
                    case 4:
                        ProfileScreen()
                        
                    default:
                        HomeScreen()
                    }
                }
                
                // Custom Tab Bar
                HStack(alignment: .bottom) {
                    tabButton(title: "Home", icon: selectedTab == 0 ? "solar_home-2-outline" : "solar_home-2-outline", index: 0)
                    
                    tabButton(title: "Explore", icon: selectedTab == 1 ? "material-symbols-light_explore-outline-rounded" : "material-symbols-light_explore-outline-rounded", index: 1)
                    
                    tabButton(title: "Cart", icon:selectedTab == 2 ? "mdi-light_cart" : "mdi-light_cart", index: 2)
                    
                    tabButton(title: "Orders", icon: selectedTab == 3 ? "mdi-light_tag" : "mdi-light_tag", index: 3)
                    
                    
                    tabButton(title: "Profile", icon: selectedTab == 4 ? "healthicons_ui-user-profile-outline" : "healthicons_ui-user-profile-outline", index: 4)
                    
                }
                .padding(.top, 8)
                .padding(.bottom, 8)
                .padding(.horizontal, 20)
                .frame(height: 91)
                    .background(
                        UnevenRoundedRectangle(
                                topLeadingRadius: 32,
                                bottomLeadingRadius: 32,
                                bottomTrailingRadius: 32,
                                topTrailingRadius: 32
                            )
                            .fill(Color.white)
                    )
            }
            
        }
    }
    
    @ViewBuilder
    private func tabButton(
        title: String,
        icon: String,
        index: Int
    ) -> some View {
        
        Button {
            selectedTab = index
        } label: {
            
            VStack(spacing: 4) {
                
                Image(icon)
                    .renderingMode(.template)
                    .font(.system(size: 24))
                    .foregroundStyle(
                        selectedTab == index ? Color("primary"): Color("grey")
                    )
                
                AppText(
                    title: title,
                    fontSize: 12,
                    textColor: selectedTab == index ? Color("primary"): Color("grey"),
                    custom: selectedTab == index ? "Roboto-Bold" : "Roboto-Regular"
                )
            }
            
            .frame(maxWidth: .infinity)
        }
        
        
    }
}

#Preview {
    NavigationBar()
}
