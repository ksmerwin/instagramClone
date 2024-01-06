//
//  FeedCell.swift
//  instagramClone
//
//  Created by Developer on 12/21/23.
//

import SwiftUI
import Kingfisher

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        VStack {
            // image + username
            HStack {
                if let user = post.user {
                    CircularProfileImageView(user: user, size: .xSmall)
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                
                
                Spacer()
                
            }
            .padding(.leading, 8)
            
            KFImage(URL(string: post.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width:400)
                .clipShape(Rectangle())
            //post image
            
            HStack {
                Button {
                    print("like post")
                    
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("comment on post")
                    
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share Post")
                    
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                    
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            // likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            
            // caption label
            HStack {
                Text("\(post.user?.username ?? "")").fontWeight(.semibold) +
                Text("\(post.caption)")
            }
            .font(.footnote)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POSTS[0])
}
