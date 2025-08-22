import SwiftUI

struct ProfileDetailView: View {
    
    let user: UserModel
    
    var body: some View {
        VStack(spacing: 16) {
            ZStack(alignment: .topTrailing) {
                Circle()
                    .fill(Color.blue.opacity(0.15))
                    .frame(width: 120, height: 120)
                    .overlay(
                        Image(systemName: "person.fill")
                            .font(.system(size: 50))
                            .foregroundStyle(.blue)
                    )
                    .overlay(alignment: .top) {
                        if user.isPremium {
                            PremiumBadge()
                                .offset(y: -8)
                        }
                    }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 8) {
                    Text(user.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(" \(user.age)")
                        .font(.title3)
                        .foregroundStyle(.secondary)
                }
                
                HStack(spacing: 8) {
                    Image(systemName: "mappin.and.ellipse")
                    Text(user.location)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Profile")
    }
}
