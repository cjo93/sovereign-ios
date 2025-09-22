import SwiftUI

struct SpectrumView: View {
    @StateObject var viewModel = SpectrumViewModel()

    var body: some View {
        Text("Hello, from SpectrumView!")
    }
}

struct SpectrumView_Previews: PreviewProvider {
    static var previews: some View {
        SpectrumView()
    }
}
