import SwiftUI

struct CustomizationView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Оформление экрана")) {
                    Text("Инструкции по настройке виджетов экрана блокировки и быстрых команд.")
                        .font(.subheadline)
                }
            }
            .navigationTitle("Кастомизация")
        }
    }
}