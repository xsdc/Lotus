import ComposableArchitecture
import SwiftUI

struct ListingView: View {
   
   let store: StoreOf<C_ListingFeature>
   
   var body: some View {
      ScrollView {
      // ---------------------------------------------------- //
      // Heading
      // ---------------------------------------------------- //
         VStack(spacing: 32) {
            // Image
            AsyncImage(
               url: URL(string: store.listing.imageURL)
            ) { image in
               image
            } placeholder: {
               Circle()
                  .fill(Color.blue)
                  .frame(width: 64, height: 64)
            }
            
            // Title
            Text(store.listing.title)
               .font(.title)
               .padding(32)
            
            // Rating
            HStack {
               // TODO: Rating component
               Image(systemName: "star.fill")
               Image(systemName: "star.fill")
               Image(systemName: "star.fill")
               Image(systemName: "star.fill")
               Image(systemName: "star.fill")
            }
         }
         .padding(16)
      }
      // ---------------------------------------------------- //
      // Details
      // ---------------------------------------------------- //
      VStack(spacing: 32) {
         // Title
         Text("Details")
            .font(.title3)
         
         HStack(spacing: 32) {
            VStack {
               // Number of Beds
               Text("Number of Beds")
               Label("\(store.listing.numberOfBeds)" + " Beds", systemImage: "bed.double.circle.fill")
            }
            VStack {
               // Location Type
               Text("Location Type")
               Label(store.listing.locationType, systemImage: "tent.circle.fill")
            }
         }
      }
      .padding(16)
      // ---------------------------------------------------- //
      // About the Location
      // ---------------------------------------------------- //
      VStack(spacing: 8) {
         Text("About this location")
            .font(.title3)
         Text(store.listing.aboutThisLocation)
            .padding(16)
      }
      .padding(16)
      // ---------------------------------------------------- //
      // Amenities
      // ---------------------------------------------------- //
      VStack(spacing: 16) {
         // Title
         Text("Amenities")
            .font(.title3)
         
         // Accommodation Details
         Text("Accommodation Details")
            .font(.headline)
         HStack(spacing: 8) {
            ForEach(store.listing.amenities.accommodationDetails, id: \.self) { item in
               TagView(item: item)
            }
         }
         
         // Space Survival
         Text("Space Survival")
            .font(.headline)
         HStack(spacing: 8) {
            ForEach(store.listing.amenities.spaceSurvival, id: \.self) { item in
               TagView(item: item)
            }
         }
         
         // Outdoors
         Text("Outdoors")
            .font(.headline)
         HStack(spacing: 8) {
            ForEach(store.listing.amenities.outdoors, id: \.self) { item in
               TagView(item: item)
            }
         }
      }
      // ---------------------------------------------------- //
      // Host
      // ---------------------------------------------------- //
      VStack(alignment: .leading, spacing: 16) {
         // Title
         Text("Meet your host")
            .font(.title3)
            .padding(16)
         
         HStack(spacing: 16) {
            Text(store.listing.host.name)
               .bold()
            
            HStack {
               // TODO: Rating component
               Image(systemName: "star.fill")
               Image(systemName: "star.fill")
               Image(systemName: "star.fill")
               Image(systemName: "star.fill")
               Image(systemName: "star.fill")
            }
         }
         .padding(16)
         
         Text(store.listing.host.description)
            .padding(16)
      }
      // ---------------------------------------------------- //
      // Reviews
      // ---------------------------------------------------- //
      VStack(alignment: .leading, spacing: 16) {
         // Title
         Text("Reviews")
            .font(.title3)
         
         ForEach(store.listing.reviews, id: \.self) { item in
            ReviewView(
               profilePicture: item.profilePicture,
               name: item.name,
               rating: item.rating,
               description: item.description
            )
         }
      }
      
      Spacer()
   }
   
}

#Preview {
   NavigationStack {
      ListingView(
         store: Store(initialState: C_ListingFeature.State(listing: .mock)) {
            C_ListingFeature()
         }
      )
   }
}
