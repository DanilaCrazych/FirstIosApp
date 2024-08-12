//
//  LanmarkList.swift
//  cinema
//
//  Created by Данил Уваров on 12.08.2024.
//

import SwiftUI

struct LanmarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Места")
            
        } detail: {
            Text("Выберите достопримечательность")
        }
    }
}

#Preview {
    LanmarkList()
}
