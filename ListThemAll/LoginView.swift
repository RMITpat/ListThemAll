//
//  LoginView.swift
//  ListThemAll
//
//  Created by Patrick Ly on 21/2/2025.
//

import SwiftUI

struct LoginView: View {
    
    @State private var inputUserName = ""
    @State private var inputPassword = ""
    @State private var loginMessage = ""
    
    @State private var userName = "Pat"
    @State private var password = "123"
    
    var body: some View {
        VStack {
            Text("Log In")
                .font(.title)
            
            
            TextField("Username", text: $inputUserName)
            SecureField("Password", text: $inputPassword)
                .textContentType(.password)
            
            Button("Sign In") {
                loginLogic()
                
            }
            Text (loginMessage)
            
        }
        .padding()
    }
    
    func loginLogic() {
        
        if inputUserName.isEmpty || inputUserName.isEmpty {
            loginMessage = "Please enter a valid password"
        }
        else if inputUserName == userName && inputPassword == password {
            loginMessage = "Login Success"
        }
        else {
            loginMessage = "Invalid username or password"
        }
    }
}

#Preview {
    LoginView()
}
