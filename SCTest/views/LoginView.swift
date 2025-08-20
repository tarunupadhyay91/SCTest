//
//  LoginView.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 28/05/25.
//

import SwiftUI

struct LoginView: View {
    @State private var emailId:String = ""
    @State private var password:String = ""
    @StateObject var loginModelObj = LoginModelView()
    var body: some View {
        NavigationView {
            
            VStack(spacing: 20) {
                    Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .accessibilityAddTraits(.isHeader)
                
                    TextField("Enter email Id", text: $emailId)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.alphabet)
                        .textInputAutocapitalization(.never)
                        .accessibilityLabel("Email address")
                        .accessibilityHint("Enter your email address")
                
                    SecureField("Enter password", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .accessibilityLabel("Password")
                        .accessibilityHint("Enter your password")
                
                    Button {
                        btnAction()
                    } label: {
                        Text("Login")
                            .frame(maxWidth: .infinity,maxHeight: 40)
                            .background(Color.blue)
                            .foregroundStyle(Color.white)
                            .cornerRadius(5)
                        
                    }
                    .accessibilityLabel("Log In button")
                                .accessibilityHint("Tap to log in with provided credentials")
                    .ignoresSafeArea()
                    
                NavigationLink(destination: listingView(),isActive: $loginModelObj.isLogin) {
                    EmptyView()
                }
                }
            .padding(40)
            }
        .ignoresSafeArea()
        .statusBarHidden()
        }
    
    func btnAction(){
        print(emailId,password)
        loginModelObj.getEmailAndPassword(email: emailId, password: password)
    }
}

#Preview {
    LoginView()
}
