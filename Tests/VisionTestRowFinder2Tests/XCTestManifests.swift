import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(VisionTestRowFinder2Tests.allTests),
    ]
}
#endif
