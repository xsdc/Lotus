import Foundation

extension C_ListingFeature.State {
   
   struct Listing: Equatable, Identifiable, Codable {
      let id: UUID
      var title: String
      var rating: Double
      var imageURL: String
      var numberOfBeds: Int
      var locationType: String
      var aboutThisLocation: String
      var amenities: Amenities
      var host: Host
      var reviews: [Review]
      
      struct Amenities: Equatable, Codable {
         var accommodationDetails: [String]
         var spaceSurvival: [String]
         var outdoors: [String]
      }

      struct Host: Equatable, Codable {
         var rating: Double
         var name: String
         var profilePicture: String
         var description: String
      }

      struct Review: Equatable, Identifiable, Codable, Hashable {
         let id: UUID
         var rating: Double
         var name: String
         var profilePicture: String
         var description: String
      }
   }
   
}
