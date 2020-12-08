//
//  MainView.swift
//  instagramswiftui
//
//  Created by Romeo Flauta on 12/7/20.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var session: SessionStore
    func logout(){
        session.logout()
    }
    
    var body: some View {
        
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                }.tag(1)
            CameraView()
                .tabItem {
                    Image(systemName: "camera.viewfinder")
                    Text("Camera")
                }.tag(2)
            NotificationView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Notifications")
                }.tag(3)
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(4)
        }
        .accentColor(.black)
        
        
//        Group {
//            Text((session.userSession == nil) ? "Loading..." : session.userSession!.email)
//            Button(action:logout, label: {
//                Text("Log out")
//            })
//        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
