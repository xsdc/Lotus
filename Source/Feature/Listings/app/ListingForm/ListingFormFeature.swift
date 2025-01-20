import ComposableArchitecture
import SwiftUI

@Reducer
struct C_ListingFormFeature {
   
   @ObservableState
   struct State: Equatable {
      var listingForm = ListingForm()
   }
   
   enum Action: Equatable, BindableAction {
      case binding(BindingAction<State>)
   }
   
   var body: some ReducerOf<Self> {
      BindingReducer()
      Reduce { state, action in
         switch action {
         case .binding(_): return .none
         }
      }
   }
   
}
