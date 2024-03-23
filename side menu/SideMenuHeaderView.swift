//
//  SideMenuHeaderView.swift
//  side menu
//
//  Created by Ehsan Rahimi on 3/23/24.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)

            VStack(alignment: .leading, spacing: 2) {
                Text("Ehsan Rahimi")
                    .font(.footnote)

                Text("test@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            }
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
