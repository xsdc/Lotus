import ComposableArchitecture
import SwiftUI

struct ListingsSearchView: View {
   
   let store: StoreOf<C_ListingsSearchFeature>
   
   var body: some View {
      Text("Search")
      
      if let listings = store.listings {
         VStack(spacing: 16) {
            ForEach(listings, id: \.self) { listing in
               ListingSearchView(
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
      ListingsSearchView(
         store: Store(
            initialState: C_ListingsSearchFeature.State(
               listings: [
                  C_ListingsSearchFeature.State.Listing.mock,
                  C_ListingsSearchFeature.State.Listing.mock,
                  C_ListingsSearchFeature.State.Listing.mock
               ]
            )
         ) {
            C_ListingsSearchFeature()
               ._printChanges()
         }
      )
   }
}
