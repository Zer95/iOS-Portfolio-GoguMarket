//
//  MainView.swift
//  GoguMarket
//
//  Created by SG on 2022/04/04.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("홈")
                    }
                    .tint(.black)
                
                LifeView()
                    .tabItem {
                        Image(systemName: "facemask.fill")
                        Text("라이프")
                    }
                
                ChatView()
                    .tabItem {
                        Image(systemName: "text.bubble.fill")
                        Text("채팅")
                    }
                
                MyPageView()
                    .tabItem {
                        Image(systemName: "figure.stand")
                        Text("프로필")
                    }
            }
            .accentColor(.yellow) // 탭바 아이콘 색상
            
            
        }
        
    }
}
