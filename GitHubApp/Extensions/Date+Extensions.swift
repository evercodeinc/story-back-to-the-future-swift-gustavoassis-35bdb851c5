import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
        let dateString = dateString
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: dateString)
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: date!)
    }
    
    
    func travelToFuture(years: Int) -> String? {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = years
        if let futureDate = calendar.date(byAdding: dateComponents, to: self){
            return Date.format(dateString: "\(futureDate)")
        }
        return nil
    }
}
