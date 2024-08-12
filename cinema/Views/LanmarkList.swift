//
//  LanmarkList.swift
//  cinema
//
//  Created by Данил Уваров on 12.08.2024.
//

import SwiftUI

struct LanmarkList: View {
    
    @Environment(ModelData.self)var modelData
    @State private var showFavoriteOnly = false
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter {
            landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationSplitView{
            List {
                Toggle(isOn: $showFavoriteOnly){
                    Text("Избанные")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Места")
            
        } detail: {
            Text("Выберите достопримечательность")
        }
    }
}

#Preview {
    LanmarkList()
        .environment(ModelData())
}
