//
//  PlusMenuView.swift
//  ReusableCustomTabBar
//
//  Created by Aditya's MacBook Pro on 19/01/24.
//

import SwiftUI

struct PlusMenu: View {
    //MARK: - Properties
    var iconHeightandWidth : CGFloat = 56
    var spaceBetweenTwoItem : CGFloat = 70
    var firstBtnImage   = Image(.App.currencyExchange)
    var firstBtnBG      = Color.blue
    var secondBtnImage  = Image(.App.income)
    var secondBtnBG     = Color.green
    var thirdBtnImage   = Image(.App.expense)
    var thirdBtnBG        = Color.red
    var iconTint        = Color.white
    
    //MARK: - View
    var body: some View {
        VStack(alignment: .center){
           firstBtnImage
                .foregroundColor(iconTint)
                .frame(width: iconHeightandWidth, height: iconHeightandWidth, alignment: .center)
                .background(firstBtnBG)
                .cornerRadius(iconHeightandWidth/2)
            HStack(spacing: spaceBetweenTwoItem) {
               secondBtnImage
                    .foregroundColor(iconTint)
                    .frame(width: iconHeightandWidth, height: iconHeightandWidth, alignment: .center)
                    .background(secondBtnBG)
                    .cornerRadius(iconHeightandWidth/2)
                thirdBtnImage
                    .foregroundColor(iconTint)
                    .frame(width: iconHeightandWidth, height: iconHeightandWidth, alignment: .center)
                    .background(thirdBtnBG)
                    .cornerRadius(iconHeightandWidth/2)
            }
        }.frame(height: 100)
        .transition(.scale)
    }
}
