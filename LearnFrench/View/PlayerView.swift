//
//  PlayerView.swift
//  LearnFrench
//
//  Created by Joao Leal on 3/18/24.
//

import SwiftUI

struct PlayerView: View {
    
    @Environment (\.dismiss) var dismiss
    @State private var value: Double = 0.0
    
    var body: some View {
        ZStack{
            Image(.sleeping)
            
                .resizable()
            
                .scaledToFill()
            
                .frame(width: UIScreen.main.bounds.width)
                
                .ignoresSafeArea()
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                HStack {
                    Button {
                        dismiss()
                    }label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundStyle(.white)
                    }
                    Spacer()
                }
        Spacer()
                Text("8 hours of Relaxing French")
                    .font(.title)
                    .foregroundStyle(.white)
        
                
                
                VStack(spacing: 5) {
                    Slider(value: $value, in: 0...60)
                        .tint(.white)
                    
                    HStack {
                        Text("0:00")
                        Spacer()
                        Text("1:00")
                    }
                    .font(.caption)
                    .foregroundStyle(.white)
                }
                HStack {
                    PlaybackControlButton(systemName: "repeat") {
                        
                    }
                    Spacer()
                    PlaybackControlButton(systemName: "gobackward.10") {
                        
                    }
                    Spacer()
                    PlaybackControlButton(systemName: "play.circle.fill", fontSize: 44) {
                        
                    }
                    Spacer()
                    PlaybackControlButton(systemName: "goforward.10") {
                        
                    }
                    Spacer()
                    PlaybackControlButton(systemName: "stop.fill") {
                        
                    }
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    PlayerView()
}
