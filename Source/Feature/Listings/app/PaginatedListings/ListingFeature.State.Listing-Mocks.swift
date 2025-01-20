import Foundation

extension C_ListingFeature.State.Listing {
   
   static let mock = Self(
      id: C_ListingFeature.State.Listing.ID(),
      title: "Title",
      rating: 5, 
      imageURL: "",
      numberOfBeds: 3,
      locationType: "Camp",
      aboutThisLocation: """
      Nestled within a secluded forest, our Hidden Oasis Campsite Retreat offers a tranquil escape for nature lovers seeking a rejuvenating getaway. Surrounded by towering trees and the symphony of bird songs, this campsite provides a peaceful retreat from the hustle and bustle of daily life.
      
      Guests can unwind in cozy tent accommodations, complete with plush bedding for a comfortable night's sleep under the stars. A private campfire pit beckons for evening gatherings, where stories are shared and s'mores are toasted to perfection.
      
      Explore the surrounding wilderness on tranquil hiking trails or simply relax at the picnic area, soaking in the serenity of nature. Watch the sunset from outdoor seating, or gaze at the night sky for a mesmerizing stargazing experience.
      
      With clean restroom facilities, hot showers, and welcoming campsite hosts, our Hidden Oasis Campsite Retreat ensures a hassle-free camping experience. Immerse yourself in nature's embrace and discover the beauty of our hidden oasis.
      """,
      amenities: Amenities(
         accommodationDetails: ["One", "Two", "Three", "Four"],
         spaceSurvival: ["One", "Two", "Three", "Four"],
         outdoors: ["One", "Two", "Three", "Four"]
      ),
      host: Host(
         rating: 5,
         name: "Host Name",
         profilePicture: "",
         description: "I've been to 15 different planets and decided to make a home for myself and others in my favourites. Each planet and location has its own distinct environment, so read the description carefully. I have equipped them all with the necessary amenities."
      ),
      reviews: [
         Review(
            id: Review.ID(),
            rating: 5,
            name: "Reviewer Name",
            profilePicture: "",
            description: "Wow, what an experience! I've never stayed in a cave before, so I was a little unprepared. Luckily, this listing had all the amenities I needed to feel safe and prepared for anything. Seriously, great experience. Giving 4 stars because the flies kept coming in at night through a hole in the cave mesh entrance."
         ),
         Review(
            id: Review.ID(),
            rating: 5,
            name: "Reviewer Name",
            profilePicture: "",
            description: "100% enjoyed the wilderness experience. Do not book if you are not an adventurer and lover of the outdoors."
         ),
         Review(
            id: Review.ID(),
            rating: 5,
            name: "Reviewer Name",
            profilePicture: "",
            description: "I thought this was going to be a cozy cave, but I was sorely disappointed. The mattress was hard, I could feel stones digging into my back. And it was COLD. They need to be more clear about this on the description."
         )
      ]
   )
   
   static let emptyMock = Self(
      id: C_ListingFeature.State.Listing.ID(),
      title: "",
      rating: 0,
      imageURL: "",
      numberOfBeds: 0,
      locationType: "",
      aboutThisLocation: "",
      amenities: Amenities(
         accommodationDetails: ["", "", "", ""],
         spaceSurvival: ["", "", "", ""],
         outdoors: ["", "", "", ""]
      ),
      host: Host(
         rating: 0,
         name: "",
         profilePicture: "",
         description: ""
      ),
      reviews: [
         Review(
            id: Review.ID(),
            rating: 0,
            name: "",
            profilePicture: "",
            description: ""
         ),
         Review(
            id: Review.ID(),
            rating: 0,
            name: "",
            profilePicture: "",
            description: ""
         ),
         Review(
            id: Review.ID(),
            rating: 0,
            name: "",
            profilePicture: "",
            description: ""
         )
      ]
   )
   
   static let lowerLimitMock = Self(
      id: C_ListingFeature.State.Listing.ID(),
      title: "0",
      rating: 0,
      imageURL: "0",
      numberOfBeds: 0,
      locationType: "0",
      aboutThisLocation: "0",
      amenities: Amenities(
         accommodationDetails: ["0", "0", "0", "0"],
         spaceSurvival: ["0", "0", "0", "0"],
         outdoors: ["0", "0", "0", "0"]
      ),
      host: Host(
         rating: 0,
         name: "0",
         profilePicture: "0",
         description: "0"
      ),
      reviews: [
         Review(
            id: Review.ID(),
            rating: 0,
            name: "0",
            profilePicture: "",
            description: "0"
         ),
         Review(
            id: Review.ID(),
            rating: 0,
            name: "0",
            profilePicture: "0",
            description: "0."
         ),
         Review(
            id: Review.ID(),
            rating: 0,
            name: "0",
            profilePicture: "0",
            description: "0"
         )
      ]
   )
   
   static let upperLimitMock = Self(
      id: C_ListingFeature.State.Listing.ID(),
      title: "0",
      rating: 0,
      imageURL: "0",
      numberOfBeds: 0,
      locationType: "0",
      aboutThisLocation: "0",
      amenities: Amenities(
         accommodationDetails: ["One", "Two", "Three", "Four"],
         spaceSurvival: ["One", "Two", "Three", "Four"],
         outdoors: ["One", "Two", "Three", "Four"]
      ),
      host: Host(
         rating: 5,
         name: "Host Name",
         profilePicture: "",
         description: "I've been to 15 different planets and decided to make a home for myself and others in my favourites. Each planet and location has its own distinct environment, so read the description carefully. I have equipped them all with the necessary amenities."
      ),
      reviews: [
         Review(
            id: Review.ID(),
            rating: 5,
            name: "Reviewer Name",
            profilePicture: "",
            description: "Wow, what an experience! I've never stayed in a cave before, so I was a little unprepared. Luckily, this listing had all the amenities I needed to feel safe and prepared for anything. Seriously, great experience. Giving 4 stars because the flies kept coming in at night through a hole in the cave mesh entrance."
         ),
         Review(
            id: Review.ID(),
            rating: 5,
            name: "Reviewer Name",
            profilePicture: "",
            description: "100% enjoyed the wilderness experience. Do not book if you are not an adventurer and lover of the outdoors."
         ),
         Review(
            id: Review.ID(),
            rating: 5,
            name: "Reviewer Name",
            profilePicture: "",
            description: "I thought this was going to be a cozy cave, but I was sorely disappointed. The mattress was hard, I could feel stones digging into my back. And it was COLD. They need to be more clear about this on the description."
         )
      ]
   )
   
}
