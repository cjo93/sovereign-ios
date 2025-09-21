import SwiftUI

struct JournalView: View {
    @StateObject var viewModel = JournalViewModel()

    var body: some View {
        Text("Hello, from JournalView!")
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
