//
//  ContentView.swift
//  App
//
//  Created by Javier Oskar Murillo Cota on 23/02/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var loginShow : FirebaseViewModel
    var body: some View {
        return Group{
            if loginShow.show{
                Home()
                    .edgesIgnoringSafeArea(.all)
                    .preferredColorScheme(.dark)
            }else{
                Login()
            }
        }
    }
}
