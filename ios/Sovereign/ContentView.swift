import SwiftUI

struct ContentView: View {
    @EnvironmentObject var coordinator: AppCoordinator

    var body: some View {
        if coordinator.hasOnboarded {
            mainTabView
        } else {
            OnboardingView()
        }
    }

    private var mainTabView: some View {
        NavigationStack {
            TabView(selection: $coordinator.selectedTab) {
                SpectrumView()
                    .tabItem {
                        Label("Spectrum", systemImage: "waveform.path.ecg")
                    }
                    .tag(AppCoordinator.Tab.spectrum)

                ModulatorView()
                    .tabItem {
                        Label("Modulator", systemImage: "tuningfork")
                    }
                    .tag(AppCoordinator.Tab.modulator)

                JournalView()
                    .tabItem {
                        Label("Journal", systemImage: "book.closed")
                    }
                    .tag(AppCoordinator.Tab.journal)
            }
            .navigationTitle(navigationTitle)
        }
    }

    private var navigationTitle: String {
        switch coordinator.selectedTab {
        case .spectrum:
            return "Spectrum"
        case .modulator:
            return "Modulator"
        case .journal:
            return "Journal"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // Preview for the main app view (onboarded)
            let mainCoordinator = AppCoordinator()
            mainCoordinator.hasOnboarded = true
            ContentView()
                .environmentObject(mainCoordinator)
                .previewDisplayName("Main App View")

            // Preview for the onboarding view
            let onboardingCoordinator = AppCoordinator()
            onboardingCoordinator.hasOnboarded = false
            ContentView()
                .environmentObject(onboardingCoordinator)
                .previewDisplayName("Onboarding View")
        }
    }
}
