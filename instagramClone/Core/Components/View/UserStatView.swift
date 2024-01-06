//
//  UserStatView.swift
//  instagramClone
//
//  Created by Developer on 12/21/23.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(width: 80)
    }
}

#Preview {
    UserStatView(value: 12, title: "Posts")
}
