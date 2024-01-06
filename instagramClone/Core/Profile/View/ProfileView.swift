//
//  ProfileView.swift
//  instagramClone
//
//  Created by Developer on 12/21/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        ScrollView {
            //header
            ProfileHeaderView(user: user)
            //post grid view
            
            PostGridView(user: user)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[1])
}
