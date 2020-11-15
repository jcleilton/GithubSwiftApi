import XCTest
@testable import GithubSwiftApi

class Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testApiGetTotalPageFromPerPageWithoutMod() {
        let quantityTotal = 1000
        let perPage = 10
        let isZero = GithubSwiftApi.getTotalPage(value: quantityTotal, from: perPage) == 100
        XCTAssert(isZero, "Pass")
    }
    
    func testApiGetTotalPageFromPerPageWithModMinor() {
        let quantityTotal = 1001
        let perPage = 10
        let isZero = GithubSwiftApi.getTotalPage(value: quantityTotal, from: perPage) == 101
        XCTAssert(isZero, "Pass")
    }
    
    func testApiGetTotalPageFromPerPageWithModMajor() {
        let quantityTotal = 1009
        let perPage = 10
        let isZero = GithubSwiftApi.getTotalPage(value: quantityTotal, from: perPage) == 101
        XCTAssert(isZero, "Pass")
    }
}
