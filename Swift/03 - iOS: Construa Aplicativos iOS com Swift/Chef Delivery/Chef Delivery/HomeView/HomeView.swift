//
//  HomeView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 09/04/26.
//

import SwiftUI

struct HomeView: View {
    @State private var isAnimating: Bool = false
    @State private var imageOffSet: CGSize = .zero
    @State private var buttonOffSet: CGFloat = .zero
    @State private var showSecondScreen: Bool = false
    
    private let buttonHeight: CGFloat = 80;
    
    var body: some View {
        GeometryReader { geometry in
            let trackWidth = geometry.size.width - 60
            let maxOffset = trackWidth - buttonHeight
            
            ZStack {
                Circle()
                    .foregroundColor(Color.red500)
                    .frame(width: isAnimating ? 300 : 0)
                    .position(
                        x: isAnimating ? 50 : -50,
                        y: isAnimating ? 100 : -100)
                    .blur(radius: 80)
                    .opacity(isAnimating ? 0.5 : 0)
                
                Circle()
                    .foregroundColor(Color.red900)
                    .frame(width: isAnimating ? 300 : 0)
                    .position(
                        x: isAnimating ? geometry.size.width - 50 : geometry.size.width + 50,
                        y: isAnimating ? geometry.size.height - 50 : geometry.size.height - 50)
                    .blur(radius: 80)
                    .opacity(isAnimating ? 0.5 : 0)
                
                VStack {
                    Text("Chef Delivery")
                        .font(.system(size: 48))
                        .fontWeight(.heavy)
                        .foregroundColor(.red500)
                        .padding(.top, 32)
                        .padding(.bottom, 8)
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -100)
                    
                    
                    Text("Peça suas comidas no conforto da sua casa")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -40)
                    
                    Spacer()
                    
                    
                    Image("image")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 60)
                        .padding(isAnimating ? 32 : 92)
                        .offset(x: imageOffSet.width, y: imageOffSet.height)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        imageOffSet = gesture.translation
                                    }
                                })
                                .onEnded({ _ in
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        imageOffSet = .zero
                                    }
                                })
                        )
                    
                    Spacer()
                    
                    ZStack(alignment: .leading) {
                        Capsule()
                            .fill(.white.opacity(0.1))
                            .frame(width: buttonOffSet + buttonHeight)
                        
                        Text("Descubra mais")
                            .font(.title2)
                            .bold()
                            .frame(width: trackWidth)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.red900)
                            .offset(x: 20)
                        
                        HStack {
                            Capsule()
                                .fill(.ultraThinMaterial)
                                .frame(width: buttonOffSet + buttonHeight)
                            
                            Spacer()
                        }
                        
                        ZStack {
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(.red900)
                            
                        }
                        .frame(width: buttonHeight + 20, height: buttonHeight)
                        .glassEffect(.clear.interactive(), in: .capsule)
                        .offset(x: buttonOffSet)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        buttonOffSet = min(max(0, gesture.translation.width), maxOffset)
                                    }
                                })
                                .onEnded({ _ in
                                    if buttonOffSet > trackWidth / 2 {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            buttonOffSet = maxOffset
                                            showSecondScreen = true
                                        }
                                        
                                    } else {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            buttonOffSet = 0
                                        }
                                    }
                                    
                                })
                        )
                    }
                    .frame(width: trackWidth, height: buttonHeight)
                    .offset(y: isAnimating ? 0 : 100)
                }
                .onAppear() {
                    withAnimation(.easeInOut(duration: 1.5)) {
                        isAnimating = true
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $showSecondScreen) {
            ContentView()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HomeView()
}
