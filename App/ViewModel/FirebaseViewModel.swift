//
//  FirebaseViewModel.swift
//  App
//
//  Created by Javier Oskar Murillo Cota on 23/02/23.
//

import Foundation
import Firebase

class FirebaseViewModel: ObservableObject{
    @Published var show = false
    
    func login(email: String, pass: String, completion: @escaping(_ done: Bool) -> Void){
        Auth.auth().signIn(withEmail: email, password: pass){ (user, error) in
            if user != nil{
                print("Si jala")
                completion(true)
            }else{
                if let error = error?.localizedDescription{
                    print("Error en Firebase", error)
                }else{
                    print("Error en la app")
                }
            }
        }
    }
}
