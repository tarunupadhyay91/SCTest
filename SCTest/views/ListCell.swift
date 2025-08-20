//
//  ListCell.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 27/05/25.
//

import SwiftUI

struct ListCell: View {
    var name:String
    var email:String
    var body: some View {
        VStack(spacing: 20) {
            Text(name)
            Text(email)
        }
        .padding()
    }
}

#Preview {
    ListCell( name: "Leanne",email: "sincere@pril.bix",)
}
