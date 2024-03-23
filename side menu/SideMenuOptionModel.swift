//
//  SideMenuOptionModel.swift
//  side menu
//
//  Created by Ehsan Rahimi on 3/23/24.
//

import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case dashboard
    case performance
    case profile
    case search
    case notification

    var title: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .performance:
            return "Performance"
        case .profile:
            return "Profile"
        case .search:
            return "Search"
        case .notification:
            return "Notification"
        }
    }

    var systemImageName: String {
        switch self {
        case .dashboard:
            return "filemenu.and.cursorarrow"
        case .performance:
            return "chart.bar"
        case .profile:
            return "person"
        case .search:
            return "magnigyingglass"
        case .notification:
            return "bell"
        }
    }
}

extension SideMenuOptionModel: Identifiable {
    var id: Int { return rawValue }
}
