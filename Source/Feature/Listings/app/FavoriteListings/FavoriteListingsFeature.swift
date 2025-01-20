import ComposableArchitecture
import Foundation

// sourcery: audit
@Reducer
struct C_FavoriteListingsFeature {
   
   @ObservableState
   struct State: Equatable {
      var listings: [Listing]?
   }
   
   enum Action: Equatable {
      
   }
   
   var body: some Reducer<State, Action> {
      Reduce { state, action in
         return .none
      }
   }
   
}
