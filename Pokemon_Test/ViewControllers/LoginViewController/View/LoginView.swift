//
//  LoginView.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 27/10/21.
//
import Foundation
import SwiftUI

struct LoginView: View {
    
       @State var username: String = ""
       @State var password: String = ""
       @State var nextpage = false
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
       
  
    var body: some View {
      
        NavigationView {
            VStack {
                WelcomeText()
                //UserImage()
                TextField("Username", text: $username)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
             
                Button("Present!") {
                    nextpage.toggle()
                    
                }
               
               
                
            }
          .navigationBarTitle("Login")
        }//cierranavigation
    
           
           .padding()
        
    }//cierra view
        
       
}

struct WelcomeText : View {
    var body: some View {
        return Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
