//
//  Login.swift
//  App
//
//  Created by Javier Oskar Murillo Cota on 27/02/23.
//
import SwiftUI


struct Login: View {
    
    @State private var email = ""
    @State private var pass = ""
    @StateObject var login = FirebaseViewModel()
    @EnvironmentObject var loginShow : FirebaseViewModel
    var device = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image("Friends")
                        .resizable()
                        .frame(width: 350, height: 150)
                }
                Spacer()
                ZStack(alignment: .bottom){
                    Color.white.edgesIgnoringSafeArea(.all)
                    Rectangle()
                        .foregroundColor(.white)
                        .overlay(RoundedRectangle(cornerRadius: 20))
                    VStack{
                        Text("Inicio Sesión")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .bold()
                            .padding(.vertical, 20)
                        Text("Correo Electrónico")
                            .font(.headline)
                            .bold()
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .frame(width: device == .pad ? 400 : nil)
                        Text("Contraseña")
                            .font(.headline)
                            .bold()
                        SecureField("Pass", text: $pass)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: device == .pad ? 400 : nil)
                            .padding(.bottom, 20)
                        
                        Button(action:{
                            login.login(email: email, pass: pass) { (done) in
                                if done{
                                    UserDefaults.standard.set(true, forKey: "sesion")
                                    loginShow.show.toggle()
                                }
                            }
                        }){
                            Text("Entrar")
                                .font(.title)
                                .frame(width: 200 )
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .bold()
                                .background(Color.blue)
                        }
                        Spacer()
                    }
                }
            }
            /*
             ZStack(alignment: .bottom){
             VStack{
             Text("Inicio Sesión")
             .multilineTextAlignment(.center)
             .font(.largeTitle)
             .foregroundColor(.black)
             .bold()
             .padding(.vertical, 20)
             Text("Correo Electrónico")
             .font(.headline)
             .bold()
             TextField("Email", text: $email)
             .textFieldStyle(RoundedBorderTextFieldStyle())
             .keyboardType(.emailAddress)
             .disableAutocorrection(true)
             .autocapitalization(.none)
             .frame(width: device == .pad ? 400 : nil)
             Text("Contraseña")
             .font(.headline)
             .bold()
             SecureField("Pass", text: $pass)
             .textFieldStyle(RoundedBorderTextFieldStyle())
             .frame(width: device == .pad ? 400 : nil)
             .padding(.bottom, 20)
             
             Button(action:{
             login.login(email: email, pass: pass) { (done) in
             if done{
             UserDefaults.standard.set(true, forKey: "sesion")
             loginShow.show.toggle()
             }
             }
             }){
             Text("Entrar")
             .font(.title)
             .frame(width: 200 )
             .foregroundColor(.white)
             .padding(.vertical, 10)
             .bold()
             .background(Color.blue)
             }
             Divider()
             /* Button(action:{
              login.createUser(email: email, pass: pass) { (done) in
              if done{
              UserDefaults.standard.set(true, forKey: "sesion")
              loginShow.show.toggle()
              }
              }
              }){
              Text("Registrarse")
              .font(.title)
              .frame(width: 200 )
              .foregroundColor(.whwite)
              .padding(.vertical, 10)
              }.background(
              Capsule()
              .stroke(Color.white)
              )*/
             Spacer()
             }
             .padding(.all)
             .frame(height: 500)
             .frame(width: .infinity)
             .background(Color.white)
             .ignoresSafeArea()
             .clipShape(RoundedRectangle(cornerRadius: 5))
             }
             */
        }
        
    }
    
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
