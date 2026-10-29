import SwiftUI

struct VPNView: View {
    @State private var isConnected = false

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Image(systemName: isConnected ? "shield.fill" : "shield")
                    .font(.system(size: 80))
                    .foregroundColor(isConnected ? .green : .gray)

                Text(isConnected ? "Подключено" : "Отключено")
                    .font(.title)

                Button(action: {
                    isConnected.toggle()
                }) {
                    Text(isConnected ? "Отключить" : "Подключить")
                        .font(.headline)
                        .padding()
                        .frame(width: 200)
                        .background(isConnected ? Color.red : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }

                Spacer()
            }
            .padding(.top, 50)
            .navigationTitle("VPN")
        }
    }
}