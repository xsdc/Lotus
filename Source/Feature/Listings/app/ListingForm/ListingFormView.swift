import ComposableArchitecture
import SwiftUI

struct ListingFormView: View {
   
   @Bindable var store: StoreOf<C_ListingFormFeature>
   
   var body: some View {
      Form {
         Section("General information") {
            HStack {
               Text("Title:")
               TextField("Title", text: $store.listingForm.generalInformation.title)
            }
            
            HStack {
               Text("Description:")
               TextField(
                  "Description",
                  text: $store.listingForm.generalInformation.description
               )
            }
         }
         Section("Location details") {
            Picker(
               "Location type",
               selection: $store.listingForm.locationDetails.locationType
            ) {
               Text("Select")
               Text("Apartment")
               Text("Campsite")
               Text("House")
               Text("Room")
               Text("Spaceship")
            }
            
            Stepper(
               "Bedrooms: \($store.listingForm.locationDetails.bedrooms.wrappedValue)",
               value: $store.listingForm.locationDetails.bedrooms,
               in: 1...10
            )
            
            HStack {
               Text("Cost per night:")
               // TODO: Currency input
               TextField(
                  "Cost per night", 
                  text: $store.listingForm.locationDetails.costPerNight
               )
            }
            
            HStack {
               Text("Image:")
               TextField("Image URL", text: $store.listingForm.generalInformation.title)
            }
         }
         Section("Amenities") {
            Text("Accommodation Details:")
            
            HStack {
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
            }
            
            Text("Space Survival:")
            
            HStack {
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
            }
            
            Text("Outdoors:")
            
            HStack {
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
               TagView(item: "Test")
            }
         }
      }
      .padding(32)
   }
   
}

#Preview {
   NavigationStack {
      ListingFormView(
         store: Store(initialState: C_ListingFormFeature.State()) {
            C_ListingFormFeature()
               ._printChanges()
         }
      )
   }
}
