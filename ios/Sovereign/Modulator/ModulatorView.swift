import SwiftUI

struct ModulatorView: View {
    @StateObject var viewModel = ModulatorViewModel()

    var body: some View {
        Text("Hello, from ModulatorView!")
    }
}

struct ModulatorView_Previews: PreviewProvider {
    static var previews: some View {
        ModulatorView()
    }
}
