import Foundation

extension C_HomeFeature.State {
   
   struct Listing: Equatable, Identifiable, Codable, Hashable {
      let id: UUID
      var title: String
      var rating: Double
      var imageURL: String
      var numberOfBeds: Int
      var locationType: String
      var costPerNight: String
   }
   
}
