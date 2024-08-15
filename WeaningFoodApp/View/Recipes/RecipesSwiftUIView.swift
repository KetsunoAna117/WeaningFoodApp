//
//  HomeSwiftUIView.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 14/08/24.
//

import SwiftUI

struct RecipesSwiftUIView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Welcome!")
            
            Text("Let's cook something 🍅")
                .font(.title)
                .fontWeight(.semibold)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.tertiaryLabel))
                TextField("Search from ingredients", text: $searchText)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color(.tertiarySystemFill))
            .cornerRadius(10)
            
            Text("Try our recommendations for your 6 months old!")
                .font(.system(size: 12))
                .fontWeight(.bold)
                .padding(.top)
            
            ScrollView{
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                    ForEach(0..<6) { _ in
                        RecipeCard(emoji: "🍠", name: "Sweet Potato Noodles")
                    }
                }
                Image(systemName: "arrow.clockwise.circle.fill")
                    .font(.system(size: 48))
                    .foregroundColor(.accent)
                    .padding(.top)
            }

            Spacer()
            
        }
        .padding(.top)
        .padding(.horizontal)
        .background(.appBackground)
    }
}

struct RecipeCard: View {
    let emoji: String
    let name: String
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Text(emoji)
                    .font(.system(size: 60))
                    .frame(height: 100)
                
                Text(name)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .init(horizontal: .center, vertical: .top))
            .padding()
            .background(.exploreCardBackground)
            .cornerRadius(10)
            
            Button(action: {
                // Add heart action here
            }) {
                Image(systemName: "heart")
                    .foregroundColor(.accent)
                    .padding(20)
            }
            .scaleEffect(1.5)
        }
    }
}

#Preview {
    RecipesSwiftUIView()
}
