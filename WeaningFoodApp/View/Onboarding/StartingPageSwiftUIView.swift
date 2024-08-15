//
//  StartingPageSwiftUIView.swift
//  WeaningFoodApp
//
//  Created by Hans Arthur Cupiterson on 15/08/24.
//

import SwiftUI

struct StartingPageSwiftUIView: View {
    var body: some View {
        ZStack {
            Color.primaryStrong
                .ignoresSafeArea()
            
            VStack {
                Text("Hello World")
            }
        }
    }
}

#Preview {
    StartingPageSwiftUIView()
}
