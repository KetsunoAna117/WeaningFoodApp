//
//  HomeSwiftUIView.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 14/08/24.
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
                    .foregroundColor(.gray)
                TextField("Search from ingredients", text: $searchText)
                Image(systemName: "mic")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            
            Text("Try our recommendations for your 6 months old!")
                .font(.headline)
            
            ScrollView{
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                    ForEach(0..<6) { _ in
                        RecipeCard(emoji: "🍠", name: "Sweet Potato Noodles")
                    }
                }
            }
        }
        .padding()
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
            .background(Color(.systemGray6))
            .cornerRadius(10)
            
            Button(action: {
                // Add heart action here
            }) {
                Image(systemName: "heart")
                    .foregroundColor(.primary)
                    .padding(8)
            }
        }
    }
}

#Preview {
    RecipesSwiftUIView()
}
