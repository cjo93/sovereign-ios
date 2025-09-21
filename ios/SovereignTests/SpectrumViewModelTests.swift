import XCTest
@testable import Sovereign

final class SpectrumViewModelTests: XCTestCase {

    var viewModel: SpectrumViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        viewModel = SpectrumViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
        try super.tearDownWithError()
    }

    func testInitialization() {
        XCTAssertNotNil(viewModel, "The view model should not be nil.")
    }
}
