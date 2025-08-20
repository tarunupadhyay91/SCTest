//
//  collectionListView.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 28/05/25.
//

import SwiftUI

struct collectionListView: View {
    var body: some View {
       // ScrollView (.vertical){
            VStack(alignment: .leading) {
                ForEach(0..<10) { item in
                    ListCell(name: "dashdfg", email: "sfhsjfjh")
                    
                        
                }
            }
      //  }
    }
}

#Preview {
    collectionListView()
}
