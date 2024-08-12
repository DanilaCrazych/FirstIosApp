//
//  LandmarkRow.swift
//  cinema
//
//  Created by Данил Уваров on 12.08.2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview("Водонапорная башня") {
    LandmarkRow(landmark: landmarks[0])
}
#Preview("Salmon"){
    LandmarkRow(landmark: landmarks[1])
}

