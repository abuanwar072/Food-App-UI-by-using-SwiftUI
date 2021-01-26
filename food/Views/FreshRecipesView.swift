//
//  FreshRecipesView.swift
//  food
//
//  Created by Abu Anwar MD Abdullah on 25/1/21.
//

import SwiftUI

struct FreshRecipesView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            SectionTitleView(title: "Today's Fresh Recipes")
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 16) {
                    RecipeCard(image: #imageLiteral(resourceName: "fresh_recipe_1"))
                    RecipeCard(image: #imageLiteral(resourceName: "fresh_recipe_2"))
                }
            }
        }
    }
}

struct RecipeCard: View {
    let image: UIImage
    var body: some View {
        ZStack {
            VStack (alignment: .leading, spacing: 8) {
                Image(uiImage: #imageLiteral(resourceName: "like"))
                    .padding(.bottom, 60)
                Text("Breakfast")
                    .font(.caption)
                    .foregroundColor(Color(#colorLiteral(red: 0.07058823529, green: 0.5607843137, blue: 0.6823529412, alpha: 1)))
                Text("French Toast with Berries")
                    .fontWeight(.medium)
                    .lineLimit(nil)
                HStack (spacing: 2) {
                    ForEach(0 ..< 5) { item in
                        Image(uiImage: #imageLiteral(resourceName: "star"))
                            .renderingMode(.template)
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                Text("120 Calories")
                    .font(.caption)
                    .foregroundColor(Color("PrimaryColor"))
                
                HStack {
                    Image(uiImage: #imageLiteral(resourceName: "time"))
                    Text("10 mins")
                        .font(.caption2)
                        .foregroundColor(Color("GrayColor"))
                    Spacer()
                    
                    Image(uiImage: #imageLiteral(resourceName: "serving"))
                    Text("1 Serving")
                        .font(.caption2)
                        .foregroundColor(Color("GrayColor"))
                }
                
            }
            .frame(width: 147)
            .padding()
            .background(Color("LightGrayColor"))
            .cornerRadius(20.0)
            
            //                Image
            Image(uiImage: image)
                .offset(x: 45, y: -60)
            
        }
        .padding(.trailing, 25)
    }
}


