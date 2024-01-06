//
//  CurrentProfileView.swift
//  instagramClone
//
//  Created by Developer on 1/2/24.
//

import SwiftUI

struct CurrentProfileView: View {
    
    let user: User
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
                ProfileHeaderView(user: user)
                //post grid view
                
                PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                    
                }
            }
            
        }
    }
}

#Preview {
    CurrentProfileView(user: User.MOCK_USERS[2])
}
