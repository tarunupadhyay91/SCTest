//
//  GeomertyExample2.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 16/06/25.
//

import SwiftUI

struct GeomertyExample2: View {
    var body: some View {
        GeometryReader { geometry in
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .position(x:geometry.size.width/2, y: geometry.size.height/2)
        }
    }
}

#Preview {
    GeomertyExample2()
}
