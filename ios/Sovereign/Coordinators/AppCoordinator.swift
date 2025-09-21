import SwiftUI

final class AppCoordinator: ObservableObject {
    @Published var hasOnboarded = false
    @Published var selectedTab: Tab = .spectrum

    enum Tab {
        case spectrum
        case modulator
        case journal
    }
}
