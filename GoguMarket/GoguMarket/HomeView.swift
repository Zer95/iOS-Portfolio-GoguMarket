//
//  HomeView.swift
//  GoguMarket
//
//  Created by SG on 2022/04/04.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack {
            VStack(spacing: 10) {
                customNavigation
                Divider()
                    .background(Color.gray)
                    .frame(width: device.screenWidth, height: 1, alignment: .center)
                mainScrollView
                Spacer()
            }
            
            
            Button(action: {print("Button")}) {
               Image("plusButton")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .shadow(radius: 3.0)
            }
            .offset(x: 150, y: 300)
            
            
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
}


extension HomeView {
    
    // 커스텀 네비게이션
    var customNavigation : some View {
        ZStack {
            HStack {
                Text("역삼동")
                    .bold()
                Image(systemName: "chevron.down")
                Spacer()
            }
            HStack {
                Spacer()
                //                Image("weggleLogo")
                //                    .resizable()
                //                    .frame(width: device.widthScale(80), height: device.heightScale(24))
                Spacer()
            }
            HStack(spacing: 10) {
                Spacer()
                Image(systemName: "magnifyingglass")
                Image(systemName: "text.justify")
                Image(systemName: "bell")
            }
        }.frame(width: device.widthScale(335),height: device.heightScale(40))
    }
    
    // 메인 스크롤 뷰
    
    var mainScrollView: some View {
        GeometryReader { _ in // 스크롤 버벅이는 현상 개선
            ScrollView() {
                VStack {
                    ForEach(1..<22) { index in
                        HStack {
                            Image("test")
                                .resizable()
                                .frame(width: device.screenWidth/3 - 10, height: device.screenWidth/3 - 10)
                                .cornerRadius(10)
                            
                            HStack {
                                
                                VStack(alignment: .leading, spacing: 5){
                                    
                                    Text("\(index)번 에어팟 프로")
                                        .font(.system(size: 16, weight: .regular))
                                    
                                    Text("강남구 역삼동 ・ 1일전")
                                        .font(.system(size: 13, weight: .light))
                                        .foregroundColor(.gray)
                                    
                                    Text("80,000원")
                                        .font(.system(size: 17, weight: .bold))
                                    
                                    Spacer()
                                }
                                
                                
                            }
                            
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                        .padding()
                        
                        Divider()
                            .background(Color.gray)
                            .frame(width: device.screenWidth - 25, height: 1, alignment: .center)
                    }
                } // VStack
                
                // 중앙에서만 탭(스크롤)이 가능했던것을 프레임을 전체로 눌러줌
                .frame(maxWidth: .infinity)
            }
        }
        
    }
}
