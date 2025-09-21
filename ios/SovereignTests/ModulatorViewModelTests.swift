import XCTest
@testable import Sovereign

final class ModulatorViewModelTests: XCTestCase {

    var viewModel: ModulatorViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        viewModel = ModulatorViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
        try super.tearDownWithError()
    }

    func testInitialization() {
        XCTAssertNotNil(viewModel, "The view model should not be nil.")
    }
}
