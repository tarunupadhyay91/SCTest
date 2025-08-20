//
//  GeometryExample.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 16/06/25.
//

import SwiftUI

struct GeomertyExample: View {
    var body: some View {
        GeometryReader { geomety in
            VStack {
                Text("width:\(geomety.size.width)")
                Text("width:\(geomety.size.height)")
            }
            .frame(width: geomety.size.width - 10,height: geomety.size.height - 10)
            .background(Color.red)
        }
    }
}

#Preview {
    GeomertyExample()
}
