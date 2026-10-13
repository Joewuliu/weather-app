
import SwiftUI

struct CurrentWeatherView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Chapel Hill")
                .font(.system(size: 36))
                .fontWeight(.regular)

            Text("55°")
                .font(.system(size: 120, weight: .thin))

            Text("Sunny")
                .font(.system(size: 24))
                .foregroundStyle(.white.opacity(0.8))

            Text("H:57°  L:45°")
                .font(.system(size: 22))
        }
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ZStack {
        Color.blue.ignoresSafeArea()
        CurrentWeatherView()
    }
}
