//
//  LoginModelView.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 28/05/25.
//
import Foundation

class LoginModelView:ObservableObject {
    @Published var isLogin = false
    
    func getEmailAndPassword(email:String,password:String){
       // if email == "tarunjataura@gmail.com" && password == "123456" {
            isLogin = true
       // }
    }
}
