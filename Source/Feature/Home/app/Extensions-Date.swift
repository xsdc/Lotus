import Foundation

extension Date {
   
   static var today: Date {
      return Date.now
   }
   
   static var tomorrow: Date {
      return Calendar.current.date(byAdding: .day, value: 1, to: Date.now) ?? Date.now
   }
   
}
