import SwiftUI

struct OnboardingView: View {
    @StateObject var viewModel = OnboardingViewModel()

    var body: some View {
        Text("Hello, from OnboardingView!")
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
