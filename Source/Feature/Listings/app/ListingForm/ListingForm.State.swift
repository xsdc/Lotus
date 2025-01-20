import ComposableArchitecture
import SwiftUI

struct ListingForm: Equatable, Identifiable, Codable {
   var id: UUID = UUID()
   var generalInformation = GeneralInformation()
   var locationDetails = LocationDetails()
   var amenities = Amenities()
}

extension ListingForm {
   struct GeneralInformation: Equatable, Identifiable, Codable {
      var id: UUID = UUID()
      var title: String = ""
      var description: String = ""
   }

   struct LocationDetails: Equatable, Identifiable, Codable {
      var id: UUID = UUID()
      var locationType: String = ""
      var bedrooms: Int = 1
      var costPerNight: String = ""
      var image: String = ""
   }

   struct Amenities: Equatable, Identifiable, Codable {
      var id: UUID = UUID()
      var accommodationDetails: [String] = []
      var spaceSurvival: [String] = []
      var outdoors: [String] = []
   }
}
