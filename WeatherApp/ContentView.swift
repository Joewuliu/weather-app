
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.02, green: 0.48, blue: 0.98),
                    Color(red: 0.18, green: 0.65, blue: 0.94),
                    Color(red: 0.65, green: 0.83, blue: 1.0)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 30) {
                CurrentWeatherView()
                    .padding(.top, 40)

                HourlyForecastView()
                    .padding(.horizontal, 20)

                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
