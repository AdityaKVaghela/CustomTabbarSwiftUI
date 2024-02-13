//
//  TabComponents.swift
//  ReusableCustomTabBar
//
//  Created by Aditya's MacBook Pro on 19/01/24.
//

import SwiftUI

enum TabComponents : String, CaseIterable , Identifiable {
    case home = "Home"
    case transaction = "Transaction"
    case budget = "Budget"
    case profile = "Profile"
    var id: String { self.rawValue }
    var image : Image {
        switch self{
        case .home:
            Image(.App.home)
        case .transaction:
            Image(.App.transaction)
        case .budget:
            Image(.App.pieChart)
        case .profile:
            Image(.App.user)
        }
    }
}



