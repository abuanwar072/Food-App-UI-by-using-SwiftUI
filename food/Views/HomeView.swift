//
//  HomeView.swift
//  food
//
//  Created by Abu Anwar MD Abdullah on 25/1/21.
//

import SwiftUI

struct HomeView: View {
    @State private var search: String = ""
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack (alignment: .leading, spacing: 16){
                HomeNavBarView()
                
                Text("Bonjour, Emma")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(Color("GrayColor"))
                
                Text("What would you like to cook today?")
                    .font(.title)
                    .fontWeight(.bold)
                
                SearchAndFilterView(search: $search)
                
                FreshRecipesView()
                
                SectionTitleView(title: "Recommended")
                
                
                RecommendedRecipeCardView(image: #imageLiteral(resourceName: "reco_1"), title: "Blueberry Muffins")
                RecommendedRecipeCardView(image: #imageLiteral(resourceName: "reco_2"), title: "Glazed Salmon")
                RecommendedRecipeCardView(image: #imageLiteral(resourceName: "reco_3"), title: "Asian Glazed Chicken Thighs")
                
            }
            .padding()
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
