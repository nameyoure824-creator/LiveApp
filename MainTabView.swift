import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            WallpaperView()
                .tabItem {
                    Label("Обои", systemImage: "photo.on.rectangle.angled")
                }
            
            CustomizationView()
                .tabItem {
                    Label("Темы", systemImage: "paintpalette")
                }
            
            WalletView()
                .tabItem {
                    Label("Wallet", systemImage: "wallet.pass")
                }
            
            VPNView()
                .tabItem {
                    Label("VPN", systemImage: "shield.checkerboard")
                }
        }
    }
}