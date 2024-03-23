//
//  SideMenuRowView.swift
//  side menu
//
//  Created by Ehsan Rahimi on 3/23/24.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?

    private var isSelected: Bool {
        return selectedOption == option
    }

    var body: some View {
        HStack {
            Image(systemName: option.systemImageName)

            Text(option.title)
                .font(.subheadline)

            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isSelected ? .blue : .primary)
        .frame(width: 216, height: 44)
        .background(isSelected ? .blue.opacity(0.15) : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    SideMenuRowView(option: .dashboard, selectedOption: .constant(.dashboard))
}
