import SwiftUI

struct ContentView: View {
    var body: some View {
        LanmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
