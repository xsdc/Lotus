import SwiftUI

struct TagView: View {
   
   let item: String
   
   var body: some View {
      Group {
         Text(item)
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
      }
      .background(
         RoundedRectangle(
            cornerSize: CGSize(width: 16, height: 16)
         )
         .foregroundStyle(Color.blue)
      )
      .padding(.horizontal, 8)
   }
   
}
