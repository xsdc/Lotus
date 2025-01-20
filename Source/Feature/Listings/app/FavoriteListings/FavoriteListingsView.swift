import ComposableArchitecture
import SwiftUI

struct FavoriteListingsView: View {
   
   let store: StoreOf<C_FavoriteListingsFeature>
   
   var body: some View {
      if let listings = store.listings {
         VStack(spacing: 16) {
            ForEach(listings, id: \.self) { listing in
               FavoriteListingView(
                  title: listing.title,
                  description: listing.description,
                  rating: listing.rating,
                  imageURL: listing.imageURL,
                  numberOfBeds: listing.numberOfBeds,
                  locationType: listing.locationType,
                  costPerNight: listing.costPerNight
               )
               .frame(maxWidth: .infinity)
               .padding(32)
            }
         }
      }
      
   }
   
}

#Preview {
   NavigationStack {
      FavoriteListingsView(
         store: Store(
            initialState: C_FavoriteListingsFeature.State(
               listings: [
                  C_FavoriteListingsFeature.State.Listing.mock,
                  C_FavoriteListingsFeature.State.Listing.mock,
                  C_FavoriteListingsFeature.State.Listing.mock
               ]
            )
         ) {
            C_FavoriteListingsFeature()
               ._printChanges()
         }
      )
   }
}
