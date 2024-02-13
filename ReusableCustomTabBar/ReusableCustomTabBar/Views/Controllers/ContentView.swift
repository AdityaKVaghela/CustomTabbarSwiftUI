//
//  ContentView.swift
//  ReusableCustomTabBar
//
//  Created by Aditya's MacBook Pro on 19/01/24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    @State var selectedTab : TabComponents = .home
    @State var btnAddTapped : Bool = false
    
    //MARK: - Views
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom){
                switch selectedTab {
                case .home:
                    HomeViewController()
                case .transaction:
                    HomeViewController()
                case .budget:
                    HomeViewController()
                case .profile:
                    HomeViewController()
                    
                }
                if btnAddTapped {
                    PlusMenu()
                        .offset(y: -150)
                    
                }
                CustomTabBar(selectedTab: $selectedTab, btnAddTapped: $btnAddTapped)
                    
            } .edgesIgnoringSafeArea(.bottom)
                .onChange(of: btnAddTapped) { btnAddTapped  in
                print(btnAddTapped)
            }
        } .transition(.opacity)
//        .animation(.none)
    }
}

#Preview {
    ContentView()
}
