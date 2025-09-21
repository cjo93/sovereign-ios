import XCTest
@testable import Sovereign

final class OnboardingViewModelTests: XCTestCase {

    var viewModel: OnboardingViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        viewModel = OnboardingViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
        try super.tearDownWithError()
    }

    func testInitialization() {
        XCTAssertNotNil(viewModel, "The view model should not be nil.")
    }
}
