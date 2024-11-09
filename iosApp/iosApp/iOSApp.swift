import SwiftUI
import GoogleMaps

@main
struct iOSApp: App {

    init() {
        if let apiKey = ProcessInfo.processInfo.environment["GOOGLE_MAPS_API_KEY"] {
            GMSServices.provideAPIKey(apiKey)
        } else {
            // 환경 변수가 설정되지 않았을 경우, 오류 처리
            print("Error: Google Maps API key not found in environment variables.")
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
