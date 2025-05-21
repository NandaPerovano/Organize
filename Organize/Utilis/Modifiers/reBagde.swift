//
//  reBagdeModifier.swift
//  Organize
//
//  Created by Fernanda Perovano on 21/05/25.
//

import SwiftUI

struct reBagdeModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    @State var value: String
    
    var textColor: Color {
        colorScheme == .light ? Palette.reWhite.render : Palette.reBlack.render
    }
    
    var backgroundColor: Color {
        colorScheme == .light ? Palette.reBlack.render : Palette.reWhite.render
    }
    
    func body(content: Content) -> some View {
        if value.isEmpty {
            content
        } else {
            content
                .overlay {
                    GeometryReader { render in     
                        Text(value)
                            .padding(6)
                            .foregroundColor(textColor)
                            .font(.body)
                            .fontWeight(.semibold)
                            .background {RoundedRectangle(cornerRadius: 17.5)
                                    .fill(backgroundColor)
                                    .frame(height: 35)
                                    .frame(minWidth: 35, maxWidth: 40)
                            }
                            .position(x: render.size.width - 2, y: 2 )
                    }
                }

        }
    }
}

extension View {
    func reBagde(_ value: String) -> some View {
        modifier(reBagdeModifier(value: value))
    }
}
