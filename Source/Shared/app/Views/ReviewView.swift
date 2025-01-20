import SwiftUI

struct ReviewView: View {
   
   let profilePicture: String
   let name: String
   let rating: Double
   let description: String
   
   var body: some View {
      HStack(spacing: 16) {
         AsyncImage(
            url: URL(string: profilePicture)
         ) { image in
            image
         } placeholder: {
            Circle()
               .fill(Color.blue)
               .frame(width: 64, height: 64)
         }
         
         VStack(alignment: .leading) {
            HStack(spacing: 16) {
               Text(name)
                  .bold()
               
               HStack {
                  // TODO: Rating component
                  Image(systemName: "star.fill")
                  Image(systemName: "star.fill")
                  Image(systemName: "star.fill")
                  Image(systemName: "star.fill")
                  Image(systemName: "star.fill")
               }
            }
            
            // Comment
            Text(description)
         }
      }
   }
   
}
