import ComposableArchitecture
import Foundation

// sourcery: audit
@Reducer
struct C_HomeFeature {
   
   @ObservableState
   struct State: Equatable {
      var checkInDatePresented = false
      var checkOutDatePresented = false
      
      var checkInDate: Date
      var checkOutDate: Date
      var bedrooms: Int = 1
      
      var listings: [Listing]?
   }
   
   enum Action: Equatable, BindableAction {
      case checkInDateButtonSelected
      case checkInDateSelected
      
      case checkOutDateButtonSelected
      case checkOutDateSelected
      
      case binding(BindingAction<State>)
   }
   
   var body: some Reducer<State, Action> {
      BindingReducer()
      Reduce { state, action in
         switch action {
         case .binding(_): 
            return .none
         case .checkInDateButtonSelected:
            state.checkInDatePresented = true
            return .none
         case .checkInDateSelected:
            state.checkInDatePresented = false
            return .none
         case .checkOutDateButtonSelected:
            state.checkOutDatePresented = true
            return .none
         case .checkOutDateSelected:
            state.checkOutDatePresented = false
            return .none
         }
      }
   }
   
}
