//
//  ContentView.swift
//  Organize
//
//  Created by Fernanda Perovano on 04/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BoxCardView(boxName: "Box", numberOfTerms: 10, theme: .mauve)
            .reBagde("10")
    }
}

    #Preview {
        ContentView()
    }
