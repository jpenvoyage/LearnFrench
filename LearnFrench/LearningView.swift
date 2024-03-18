//
//  LearningView.swift
//  LearnFrench
//
//  Created by Joao Leal on 3/18/24.
//

import SwiftUI

struct LearningView: View {
    
    @State private var showPlayer = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 0){
                
                Image(.sleeping)
                    .resizable()
                    .scaledToFill()
                    .frame(height: UIScreen.main.bounds.height / 3)
                    .offset(y: 140)
                
                ZStack {
                    Color(red: 25/255, green: 23/255, blue: 22/255)
                    
                    VStack(alignment: .leading, spacing: 24) {
                        VStack(alignment: . leading, spacing: 8){
                            Text("Music")
                            Text("0s")
                        }
                        .font(.subheadline)
                        .textCase(.uppercase)
                        .opacity(0.7)
                        
                        
                        Text("Learn French While You Sleep")
                            .font(.title)
                        
                        Button{
                         showPlayer = true
                        } label: {
                            Label("Play", systemImage: "play.fill")
                                .font(.headline)
                                .foregroundStyle(.black)
                                .padding(.vertical, 10)
                                .frame(maxWidth: .infinity)
                                .background(.white)
                                .clipShape(.rect(cornerRadius: 20))
                        }
                        
                        Text("8 hours of Relaxing French - Most Important Phrases and Words")
                        Spacer()
                    }
                    .foregroundStyle(.white)
                    .padding()
                    
                }.frame(height: UIScreen.main.bounds.height * 2 / 3)
            }.ignoresSafeArea()
                .fullScreenCover(isPresented: $showPlayer) {
                    PlayerView()
                }
        }
    }
}
#Preview {
    LearningView()
}
