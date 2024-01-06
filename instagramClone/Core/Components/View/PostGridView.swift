//
//  PostGridView.swift
//  instagramClone
//
//  Created by Developer on 1/2/24.
//

import SwiftUI
import Kingfisher

struct PostGridView: View {
   @StateObject var viewModel: PostGridViewModel
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: PostGridViewModel(user: user))
    }
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1),
    ]
    
    private let dimen: CGFloat = (UIScreen.main.bounds.width/3) - 1
    
    
    var body: some View {
        
        LazyVGrid(columns: gridItems, spacing: 2) {
            ForEach(viewModel.posts) { post in
                KFImage(URL(string: post.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: dimen, height: dimen)
                    .clipped()
                
            }
            
        }
    }
}

#Preview {
    PostGridView(user: User.MOCK_USERS[0])
}
