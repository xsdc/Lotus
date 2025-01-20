import ComposableArchitecture
import SwiftUI
import RealityKit
import RealityKitContent

// sourcery: audit
struct AppView: View {
   
   @State private var searchText: String = ""
   @State private var exploreNavigationSplitViewVisibility = NavigationSplitViewVisibility.detailOnly
   @State private var profileNavigationSplitViewVisibility = NavigationSplitViewVisibility.all
   
   var body: some View {
      TabView {
         NavigationSplitView(columnVisibility: $exploreNavigationSplitViewVisibility) {
            Button("detailOnly") {
               exploreNavigationSplitViewVisibility = .detailOnly
            }
            .navigationSplitViewColumnWidth(300)
         } detail: {
            NavigationStack {
               NavigationLink {
                  Color.yellow
               } label: {
                  Text("Go")
               }
            }
         }
         .tabItem {
            Image(systemName: "magnifyingglass")
            Text("Explore")
         }
         
         Group {
            FavoritesTabView(
               store: Store(initialState: C_FavoritesTabFeature.State()) {
                  C_FavoritesTabFeature()
                     ._printChanges()
               }
            )
         }
         .tabItem {
            Image(systemName: "heart.fill")
            Text("Favorites")
         }
         
         NavigationSplitView(columnVisibility: $profileNavigationSplitViewVisibility) {
            Button("detailOnly") {
               profileNavigationSplitViewVisibility = .detailOnly
            }
            .navigationSplitViewColumnWidth(300)
         } detail: {
            NavigationStack {
               NavigationLink {
                  Color.yellow
               } label: {
                  Text("Go")
               }
               
            }
         }
         .tabItem {
            Image(systemName: "person.fill")
            Text("Account")
         }
      }
      .navigationSplitViewStyle(.balanced)
      // TODO: Search
//      .ornament(attachmentAnchor: .scene(.top)) {
//         Text("Test").searchable(text: $searchText)
//      }
      
      //      VStack {
      //         Model3D(named: "Scene", bundle: realityKitContentBundle)
      //            .padding(.bottom, 50)
      //
      //         Text("Hello, world!")
      //      }
      //      .padding()
   }
   
}

#Preview(windowStyle: .automatic) {
   AppView()
}
