import SwiftUI

struct WalletView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "creditcard.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.blue)

                Text("Управление Apple Wallet")
                    .font(.title2)
                    .bold()

                Button(action: {
                    if let url = URL(string: "shoebox://"), UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Открыть Wallet")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal)

                Spacer()
            }
            .padding(.top, 40)
            .navigationTitle("Wallet")
        }
    }
}