//
//  ContentView.swift
//  GoguMarket
//
//  Created by SG on 2022/04/04.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .bottomLeading) {
                TabView {
                    HomeView()
                        .tabItem {
                          //  Image("home")
                            Text("홈")
                        }
                    
                    LifeView()
                        .tabItem {
                          //  Image("life")
                            Text("라이프")
                        }
                    
                    ChatView()
                        .tabItem {
                            Text("채팅")
                        }
                    
                    MyPageView()
                        .tabItem {
                            Text("프로필")
                        }
                }
                
            }
        }
    }
}
