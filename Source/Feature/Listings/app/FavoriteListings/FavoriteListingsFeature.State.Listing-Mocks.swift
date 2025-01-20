import Foundation

extension C_FavoriteListingsFeature.State.Listing {
   
   static let mock = Self(
      id: UUID(),
      title: "The Pod in Origae-6", 
      description: "Enjoy a converted pod in Origae-6! Originally from Earth, this craft has been completely renovated for space travel. We offer complimentary home-away-from-homeworld breakfast from 0800 to 0802. This spaceship features a full temperature control system, a droid concierge and a self-cleaning bathroom. Plasma lighting system is all automatic and cannot be manually overriden. Though this pod is small, it is homey.",
      rating: 4,
      imageURL: "",
      numberOfBeds: 3,
      locationType: "Spaceship",
      costPerNight: "688"
   )
   
}
