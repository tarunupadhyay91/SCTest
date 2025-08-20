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
        VStack {
            Text(name)
           // Text(email)
        }
    }
}

#Preview {
    ListCell( name: "Leanne",email: "sincere@pril.bix",)
}
