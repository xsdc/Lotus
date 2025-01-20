import ComposableArchitecture
import Foundation

// sourcery: audit
@Reducer
struct C_ExploreTabFeature {
   
   // sourcery: audit
   struct Path: Reducer {
      enum State: Equatable {
         
      }
      enum Action: Equatable {
         
      }
      var body: some ReducerOf<Self> {
         Reduce { state, action in
            return Effect.none
         }
      }
   }
   
   @ObservableState
   struct State: Equatable {
      var path = StackState<Path.State>()
      var homeView = C_HomeFeature.State(checkInDate: Date.today, checkOutDate: Date.tomorrow)
   }
   
   enum Action: Equatable {
      case path(StackAction<Path.State, Path.Action>)
      case homeView(C_HomeFeature.Action)
   }
   
   var body: some Reducer<State, Action> {
      Scope(state: \.homeView, action: /Action.homeView) {
         C_HomeFeature()
      }
      
      Reduce { state, action in
         switch action {
         case .path(_):
            return Effect.none
         case .homeView(_):
            return .none // TODO
         }
      }
   }
   
}
