import ComposableArchitecture

// sourcery: audit
@Reducer
struct C_ListingFeature {
   
   @ObservableState
   struct State: Equatable {
      var listing: Listing
   }
   
   enum Action: Equatable {
      
   }
   
   var body: some Reducer<State, Action> {
      Reduce { state, action in
         switch action {
            
         }
      }
   }
   
}
