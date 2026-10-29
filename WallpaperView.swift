import SwiftUI

struct WallpaperView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.gray.opacity(0.3))
                    .overlay(
                        VStack {
                            Image(systemName: "video.fill")
                                .font(.largeTitle)
                            Text("Превью анимированных обоев")
                        }
                    )
                    .frame(height: 300)
                    .padding()

                Button(action: {
                    print("Сохранение видео обоев...")
                }) {
                    Label("Сохранить в Медиатеку", systemImage: "square.and.arrow.down")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal)

                Spacer()
            }
            .navigationTitle("Каталог обоев")
        }
    }
}