import XCTest
@testable import GitHubApp

class DateExtensionsTests: XCTestCase {

    func testFormat() throws {
        
        let dateString = "2012-01-24T23:19:49Z"
        
        let formattedDate = Date.format(dateString: dateString)
        
        XCTAssertEqual(formattedDate, "24/01/2012")
    }
    
    func testTravelToFuture() throws {
        
        var dateComponents = DateComponents()
        dateComponents.year = 2023
        dateComponents.month = 1
        dateComponents.day = 31
        
        let date = Calendar.current.date(from: dateComponents)!
        
        let futureDate = date.travelToFuture(years: 1000)
        
        XCTAssertEqual(futureDate, "31/01/3023")
    }
}
