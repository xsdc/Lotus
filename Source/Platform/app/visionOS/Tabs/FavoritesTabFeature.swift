import ComposableArchitecture

// sourcery: audit
@Reducer
struct C_FavoritesTabFeature {
   
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
      var listingsView = C_FavoriteListingsFeature.State()
   }
   
   enum Action: Equatable {
      case path(StackAction<Path.State, Path.Action>)
      case listingsView(C_FavoriteListingsFeature.Action)
   }
   
   var body: some Reducer<State, Action> {
      Scope(state: \.listingsView, action: /Action.listingsView) {
         C_FavoriteListingsFeature()
      }
      
      Scope(state: \.listingsView, action: /Action.listingsView) {
         C_FavoriteListingsFeature()
      }
      
      Reduce { state, action in
         switch action {
         case .path(_):
            return Effect.none
         }
      }
   }
   
}
