import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: "star.fill")
            Text("Premium Member")
                .fontWeight(.semibold)
        }
        .font(.caption2)
        .padding(.horizontal, 10)
        .padding(.vertical, 6)
        .background(Capsule().fill(Color.yellow))
        .shadow(radius: 2, y: 1)
    }
}
