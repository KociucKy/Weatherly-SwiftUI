import Foundation

struct APIResponse: Codable, Identifiable {
    var id = UUID()
    var weather: [Weather]
    var main: Main
    
}

struct Weather: Codable, Identifiable {
    var id: Int
    var main, description, icon: String
}

struct Main: Codable {
    var temp: Int
    var tempMin: Int
    var tempMax: Int
    
    enum CodingKeys: String, CodingKey {
        case temp
        case tempMin = "temp_min"
        case tempMax = "temp_max"
    }
}
