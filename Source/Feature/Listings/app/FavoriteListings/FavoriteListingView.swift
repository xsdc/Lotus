import SwiftUI

struct FavoriteListingView: View {
   
   let title: String
   let description: String
   let rating: Double
   let imageURL: String
   let numberOfBeds: Int
   let locationType: String
   let costPerNight: String
   
   var body: some View {
      HStack(spacing: 24) {
         AsyncImage(
            url: URL(string: imageURL)
         ) { image in
            image
               .frame(maxWidth: 50)
         } placeholder: {
            RoundedRectangle(cornerSize: CGSize(width: 12, height: 12))
               .fill(Color.pink)
               .padding(16)
         }
         .frame(minWidth: 300, maxWidth: 300, minHeight: 200, maxHeight: 200)
         .padding(16)
         
         VStack(alignment: .leading, spacing: 24) {
            Text(locationType)
            
            Text(title)
               .bold()
            
            Text(description)
            
            HStack {
               HStack {
                  // TODO: Rating component
                  Image(systemName: "star.fill")
                  Image(systemName: "star.fill")
                  Image(systemName: "star.fill")
                  Image(systemName: "star.fill")
                  Image(systemName: "star.fill")
               }
               
               Label("\(numberOfBeds)", systemImage: "bed.double.fill")
               
               Spacer()
               
               Text(costPerNight + "/night")
                  .bold()
            }
            .padding(24)
         }
      }
      .frame(minWidth: 700)
   }
   
}

#Preview {
   NavigationStack {
      FavoriteListingView(
         title: "Title",
         description: "Enjoy this floaty, repurposed aircraft reminiscent of Earth’s former converted airstreams. Includes lake access!",
         rating: 5,
         imageURL: "",
         numberOfBeds: 3,
         locationType: "Type",
         costPerNight: "300"
      )
      .frame(minWidth: 700, maxWidth: 1000)
   }
}

