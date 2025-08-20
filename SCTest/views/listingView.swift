//
//  listingView.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 27/05/25.
//

import SwiftUI

struct listingView: View {
    @StateObject var viewModelObj = ViewModel()
    @State private var searchText = ""
    var filteredItems:[User] {
        if searchText.isEmpty {
            return viewModelObj.users
        }
        else {
            return viewModelObj.users.filter{$0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
    var body: some View {
        VStack {
            List(filteredItems){ user in
                if user.name == "Ervin Howell" {
                    collectionListView()
                }
                else {
                    ListCell(name: user.name! , email: user.email!)
                }
            }
            .searchable(text: $searchText)
            .onAppear{
                
                viewModelObj.fetchUser()
            }
        }
        .navigationTitle("Listing")
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    listingView()
}
