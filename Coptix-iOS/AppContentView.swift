//
//  ContentView.swift
//  Coptix-iOS
//
//  Created by Jo on 04/03/2024.
//

import SwiftUI

struct AppContentView: View {
    @State
    private var shouldNavigateToNextScreen:Bool = false
    
    
    var body: some View {
        VStack {
            if shouldNavigateToNextScreen {
                HomeLandingScreen()
            }
            else {
                SplashScreen()
                    .onAppear{
                        startSplashTimer(duration: 2)
                    }
            }
        }
        
    }
    
    func startSplashTimer(duration:TimeInterval = 5){
        DispatchQueue.main.asyncAfter(deadline: .now()+duration){
            withAnimation {
                shouldNavigateToNextScreen = true
            }
        }
    }
}

#Preview {
    AppContentView()
}
