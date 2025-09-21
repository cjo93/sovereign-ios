import XCTest
@testable import Sovereign

final class JournalViewModelTests: XCTestCase {

    var viewModel: JournalViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        viewModel = JournalViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
        try super.tearDownWithError()
    }

    func testInitialization() {
        XCTAssertNotNil(viewModel, "The view model should not be nil.")
    }
}
