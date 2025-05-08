//
//  BoxCardView.swift
//  Organize
//
//  Created by Fernanda Perovano on 07/05/25.
//

import SwiftUI

struct BoxCardView: View {
    @State private var boxName: String
    @State private var numberOfTerms: Int
    @State private var theme: Palette
    
    init(boxName: String, numberOfTerms: Int, theme: Palette) {
        self.boxName = boxName
        self.numberOfTerms = numberOfTerms
        self.theme = theme
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(boxName)
                .font(.title3)
                .fontWeight(.bold)
            
            Label("\(numberOfTerms)terms", systemImage: "doc.plaintext.fill")
                .padding(8)
                .background(Palette.aquamarine.render.opacity(0.2))
                .cornerRadius(10)
        }
        .padding(16)
        .frame(width: 165, alignment: .leading)
        .background(theme.render)
        .cornerRadius(10)
    }
}

#Preview {
    BoxCardView(boxName: "Math", numberOfTerms: 35, theme: .mauve)
}
