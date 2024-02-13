//
//  CustomTabBar.swift
//  ReusableCustomTabBar
//
//  Created by Aditya's MacBook Pro on 19/01/24.
//

import SwiftUI

struct CustomTabBar: View {
    //MARK: - Properties
    @Binding var selectedTab : TabComponents
    @Binding var btnAddTapped : Bool
    var tintColor : Color = .purple
    var backgroundColor : Color = .white
    var unSelectedTabColor : Color = .gray
    var tabBarHeight : CGFloat = 100.0
    var tabIconHeight : CGFloat = 32.0
    var spacingBetweenTabs : CGFloat = 70.0
    var btnAddHeightAndWidth : CGFloat = 56.0
    var isAddButtonHidden  = false
    var addButtonOffSet : CGFloat = -40
    
    //MARK: - View
    var body: some View {
        ZStack{
            if !isAddButtonHidden{
                TabBarShape()
                .fill(backgroundColor)
                .frame(height: tabBarHeight)
                .overlay(
                    Image(.App.addTab)
                        .frame(width: btnAddHeightAndWidth, height: btnAddHeightAndWidth, alignment: .center)
                        .background(tintColor)
                        .cornerRadius(btnAddHeightAndWidth/2)
                        .rotationEffect(Angle(degrees: btnAddTapped ? 135 : 0))
                        .onTapGesture {
                            withAnimation {
                                self.btnAddTapped.toggle()
                            }
                        }
                        .offset(x: 0, y: -35)
                )
        }
            else{
                self.backgroundColor.frame(width: UIScreen.main.bounds.width,height: tabBarHeight)
            }
            HStack(alignment: .top,spacing:  spacingBetweenTabs) {
                ForEach(TabComponents.allCases){ tab in
                        tab.image
                        .foregroundColor(selectedTab == tab ? tintColor : unSelectedTabColor)
                        .frame(width: tabIconHeight , height: tabIconHeight)
                        .onTapGesture {
                            self.selectedTab = tab
                        }
//
                }
            }.frame(width :UIScreen.main.bounds.width)
        }
    }
}


#Preview {
    CustomTabBar(selectedTab: .constant(.home), btnAddTapped: .constant(false))
}

