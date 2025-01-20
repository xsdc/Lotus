import ComposableArchitecture
import SwiftUI

// sourcery: audit
struct HomeView: View {
   
   @Bindable var store: StoreOf<C_HomeFeature>
   
   var body: some View {
      
      VStack {
         HStack(spacing: 48) {
            Group {
               VStack {
                  Text("Check-in Date")
                  Button(store.checkInDate.formatted(.dateTime.year().month().day())) {
                     store.send(.checkInDateButtonSelected)
                  }
                  .sheet(
                     isPresented: $store.checkInDatePresented,
                     content: {
                        VStack {
                           DatePicker(
                              "Check-in Date",
                              selection: $store.checkInDate,
                              displayedComponents: [.date]
                           )
                           .datePickerStyle(.graphical)
                           .frame(minWidth: 512)
                           .onChange(of: store.checkInDate) { old, new in
                              store.send(.checkInDateSelected)
                           }
                           
                           Button("Cancel") {
                              store.send(.checkInDateSelected)
                           }
                        }
                        .padding()
                     }
                  )
               }
            }
            
            Group {
               VStack {
                  Text("Check-out Date")
                  Button(store.checkOutDate.formatted(.dateTime.year().month().day())) {
                     store.send(.checkOutDateButtonSelected)
                  }
                  .sheet(
                     isPresented: $store.checkOutDatePresented,
                     content: {
                        VStack {
                           DatePicker(
                              "Check-out Date",
                              selection: $store.checkOutDate,
                              displayedComponents: [.date]
                           )
                           .datePickerStyle(.graphical)
                           .frame(minWidth: 512)
                           .onChange(of: store.checkOutDate) { old, new in
                              store.send(.checkOutDateSelected)
                           }
                           
                           Button("Cancel") {
                              store.send(.checkOutDateSelected)
                           }
                        }
                        .padding()
                     }
                  )
               }
            }
            Group {
               VStack {
                  Text("Bedrooms")
                  Picker("Bedrooms", selection: $store.bedrooms) {
                     ForEach(1...10, id: \.self) { item in
                        Text("\(item)+")
                     }
                  }
               }
            }
            Group {
               Button("Find a Place") {
                  
               }
            }
         }
      }
      .padding(32)
      
      HStack(alignment: .center, spacing: 32) {
         if let listings = store.listings {
            ForEach(listings, id: \.self) { listing in
               HomeListingView(
                  title: listing.title,
                  rating: listing.rating,
                  imageURL: listing.imageURL,
                  numberOfBeds: listing.numberOfBeds,
                  locationType: listing.locationType,
                  costPerNight: listing.costPerNight
               )
               .frame(maxWidth: 400)
            }
         }
      }
      .padding(32)
      
      Spacer()
   }
   
}

#Preview {
   NavigationStack {
      HomeView(
         store: Store(
            initialState: C_HomeFeature.State(
               checkInDate: Date.today,
               checkOutDate: Date.tomorrow,
               listings: [
                  C_HomeFeature.State.Listing.mock,
                  C_HomeFeature.State.Listing.mock,
                  C_HomeFeature.State.Listing.mock
               ]
            )
         ) {
            C_HomeFeature()
               ._printChanges()
         }
      )
   }
}
