//
//  PlaybackControlButton.swift
//  LearnFrench
//
//  Created by Joao Leal on 3/18/24.
//

import SwiftUI

struct PlaybackControlButton: View {
    var systemName: String = "play"
    var fontSize: CGFloat = 24
    var color: Color = .white
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundStyle(color)
        }
    }
}

#Preview {
    PlaybackControlButton(action: {})
        .preferredColorScheme(.dark)
}
