
import SwiftUI

struct HourlyForecastView: View {

    let hours = [
        Hour(time: "Now", icon: "sun.max.fill", temperature: "55°"),
        Hour(time: "1 PM", icon: "sun.max.fill", temperature: "56°"),
        Hour(time: "2 PM", icon: "cloud.sun.fill", temperature: "57°"),
        Hour(time: "3 PM", icon: "cloud.sun.fill", temperature: "56°"),
        Hour(time: "4 PM", icon: "cloud.fill", temperature: "54°"),
        Hour(time: "5 PM", icon: "cloud.fill", temperature: "52°"),
        Hour(time: "6 PM", icon: "moon.fill", temperature: "49°")
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {

            Text("HOURLY FORECAST")
                .font(.caption)
                .foregroundStyle(.white.opacity(0.8))

            ScrollView(.horizontal) {
                HStack(spacing: 25) {
                    ForEach(hours) { hour in
                        VStack(spacing: 12) {
                            Text(hour.time)

                            Image(systemName: hour.icon)
                                .font(.title2)

                            Text(hour.temperature)
                        }
                        .foregroundStyle(.white)
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
        .padding()
        .background(.white.opacity(0.2))
        .cornerRadius(20)
    }
}

#Preview {
    ZStack {
        Color.blue.ignoresSafeArea()
        HourlyForecastView()
            .padding()
    }
}
