import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Водонапорная башня")
                    .font(.title)
                HStack {
                    Text("Улица Тёмкина")
                    Spacer()
                    Text("Кольчугино")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("О Башне")
                    .font(.title2)
                Text("Водонапорная башня — это одна из достопримечательностей города Кольчугино. Она была построена по проекту Верещагина и сейчас в ней находится фитнес-центр и танцевальная студия.")
                
            }
            .padding()
            
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
