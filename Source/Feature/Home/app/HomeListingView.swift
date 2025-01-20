import SwiftUI

struct HomeListingView: View {
   
   let title: String
   let rating: Double
   let imageURL: String
   let numberOfBeds: Int
   let locationType: String
   let costPerNight: String
   
   var body: some View {
      VStack(spacing: 24) {
         AsyncImage(
            url: URL(string: imageURL)
         ) { image in
            image
         } placeholder: {
            RoundedRectangle(cornerSize: CGSize(width: 12, height: 12))
               .fill(Color.pink)
               .aspectRatio(CGSize(width: 4, height: 3), contentMode: .fill)
               .padding(16)
         }
         .padding(16)
         
         Text(locationType)
            .bold()
         
         Text(title)
            .bold()
         
         HStack(spacing: 16) {
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
   
}

#Preview {
   HomeListingView(title: "Test", rating: 5, imageURL: "", numberOfBeds: 3, locationType: "Test", costPerNight: "300")
      .frame(minWidth: 600, maxWidth: 600)
      .glassBackgroundEffect()
}
