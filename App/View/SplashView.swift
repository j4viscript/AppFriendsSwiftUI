//
//  SplashView.swift
//  App
//
//  Created by Javier Oskar Murillo Cota on 28/02/23.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    let login = FirebaseViewModel()
    var body: some View {
        if isActive{
            ContentView().environmentObject(login)
        }else{
            ZStack{
                Color("primaryColor").edgesIgnoringSafeArea(.all)
                VStack{
                    Image("Friends").resizable().frame(width: 200, height: 120).scaledToFill()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.1)){
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
