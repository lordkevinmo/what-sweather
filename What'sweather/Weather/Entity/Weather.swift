//
//  Weather.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 17/12/2020.
//

import Foundation


struct Response: Codable {
    let latitude: Double?           // Geographical coordinates of the location (latitude)
    let longitude: Double?          // Geographical coordinates of the location (longitude)
    let timezone: String?           // Timezone name for the requested location
    let current: Weather?           // current weather infos
    let hourly: Hourly?             // hourly weather forcasting
    let daily: [Daily]?
    let alerts: [Alerts]?
    
    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "long"
        
        case timezone
        case current
        case hourly
        case daily
        case alerts
    }
}

/// Weather holds the data of the forecast weather
struct Weather: Codable {
    let datetime: Double?           // Current time, Unix, UTC
    let sunrise: Double?            // Sunrise time, Unix, UTC
    let sunset: Double?             // Sunset time, Unix, UTC
    let temperature: Double?        // Temperature. metric: Celsius, imperial: Fahrenheit. (The value depends on the user location)
    let feelsLike: Double?          // Temperature. This temperature parameter accounts for the human perception of weather. Units – metric: Celsius, imperial: Fahrenheit.
    let pressure: Double?           // Atmospheric pressure on the sea level, hPa
    let humidity: Double?           // Humidity, %
    let dewPoint: Double?           // Atmospheric temperature (varying according to pressure and humidity) below which water droplets begin to condense and dew can form. Units –                                default: kelvin, metric: Celsius, imperial: Fahrenheit.
    let clouds: Double?             // Cloudiness, %
    let uvIndex: Double?            // Midday UV index
    let visibility: Double?         // Average visibility, metres
    let windSpeed: Double?          // Wind speed. Wind speed. Units – default: metre/sec, metric: metre/sec, imperial: miles/hour.
    let windGust: Double?           // (where available) Wind gust. Units – default: metre/sec, metric: metre/sec, imperial: miles/hour.
    let windDeg: Double?            // Wind direction, degrees (meteorological)
    let probPrecipitation: Double?  // Probability of precipitation
    let weather: [WeatherContent]   // Current weather
    
    enum CodingKeys: String, CodingKey {
        case datetime = "dt"
        case temperature = "temp"
        case feelsLike = "feels_like"
        case dewPoint = "dew_point"
        case uvIndex = "uvi"
        case windSpeed = "wind_speed"
        case windGust = "wind_gust"
        case windDeg = "wind_deg"
        case probPrecipitation = "pop"
        
        case sunrise
        case sunset
        case pressure
        case humidity
        case clouds
        case visibility
        case weather
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(datetime, forKey: .datetime)
        try container.encode(sunrise, forKey: .sunrise)
        try container.encode(sunset, forKey: .sunset)
        try container.encode(temperature, forKey: .temperature)
        try container.encode(feelsLike, forKey: .feelsLike)
        try container.encode(pressure, forKey: .pressure)
        try container.encode(humidity, forKey: .humidity)
        try container.encode(dewPoint, forKey: .dewPoint)
        try container.encode(clouds, forKey: .clouds)
        try container.encode(uvIndex, forKey: .uvIndex)
        try container.encode(visibility, forKey: .visibility)
        try container.encode(windSpeed, forKey: .windSpeed)
        try container.encode(windGust, forKey: .windGust)
        try container.encode(windDeg, forKey: .windDeg)
        try container.encode(probPrecipitation, forKey: .probPrecipitation)
        try container.encode(weather, forKey: .weather)
    }
}

/// Daily holds the same data like Weather data structure except here Temperature and Feels Like holds
/// several data
struct Daily: Codable {
    let datetime: Double?
    let sunrise: Double?
    let sunset: Double?
    let temperature: Temperature? // Temperature. metric: Celsius, imperial: Fahrenheit. (The value depends on the user location)
    let feelsLike: FeelsLike?   // Temperature. This temperature parameter accounts for the human perception of weather. Units – metric: Celsius, imperial: Fahrenheit.
    let pressure: Double?
    let humidity: Double?
    let dewPoint: Double?
    let clouds: Double?
    let uvIndex: Double?
    let visibility: Double?
    let windSpeed: Double?
    let windGust: Double?
    let windDeg: Double?
    let probPrecipitation: Double?
    let weather: [WeatherContent]
    
    enum CodingKeys: String, CodingKey {
        case datetime = "dt"
        case temperature = "temp"
        case feelsLike = "feels_like"
        case dewPoint = "dew_point"
        case uvIndex = "uvi"
        case windSpeed = "wind_speed"
        case windGust = "wind_gust"
        case windDeg = "wind_deg"
        case probPrecipitation = "pop"
        
        case sunrise
        case sunset
        case pressure
        case humidity
        case clouds
        case visibility
        case weather
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(datetime, forKey: .datetime)
        try container.encode(sunrise, forKey: .sunrise)
        try container.encode(sunset, forKey: .sunset)
        try container.encode(temperature, forKey: .temperature)
        try container.encode(feelsLike, forKey: .feelsLike)
        try container.encode(pressure, forKey: .pressure)
        try container.encode(humidity, forKey: .humidity)
        try container.encode(dewPoint, forKey: .dewPoint)
        try container.encode(clouds, forKey: .clouds)
        try container.encode(uvIndex, forKey: .uvIndex)
        try container.encode(visibility, forKey: .visibility)
        try container.encode(windSpeed, forKey: .windSpeed)
        try container.encode(windGust, forKey: .windGust)
        try container.encode(windDeg, forKey: .windDeg)
        try container.encode(probPrecipitation, forKey: .probPrecipitation)
        try container.encode(weather, forKey: .weather)
    }
}

struct WeatherContent: Codable {
    let id: Int?    // Weather condition id
    let main: String?   // Group of weather parameters (Rain, Snow, Extreme etc.)
    let description: String?    // Weather condition within the group
    let icon: String?   // Weather icon id
    
    enum CodingKeys: String, CodingKey {
        case id
        case main
        case description
        case icon
    }
    
    // Conform to Encodable protocol
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(id, forKey: .id)
        try container.encode(main, forKey: .main)
        try container.encode(description, forKey: .description)
        try container.encode(icon, forKey: .icon)
    }
}

/// Temperature holds temperature data for daily foforecast weather
struct Temperature: Codable {
    let morning: Double?
    let day: Double?
    let evening: Double?
    let night: Double?
    let minimum: Double?
    let maximum: Double?
    
    enum CodingKeys: String, CodingKey {
        case morning = "morn"
        case evening = "eve"
        case minimum = "min"
        case maximum = "max"
        
        case day
        case night
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(morning, forKey: .morning)
        try container.encode(day, forKey: .day)
        try container.encode(evening, forKey: .evening)
        try container.encode(night, forKey: .night)
        try container.encode(minimum, forKey: .minimum)
        try container.encode(maximum, forKey: .maximum)
    }
}

/// Alerts holds Government weather alerts data from major national weather warning systems
struct Alerts: Codable {
    let senderName: String?     // Name of the alert source.
    let event: String?          // Alert event name
    let start: Double?          // Date and time of the start of the alert, Unix, UTC
    let end: Double?            // Date and time of the end of the alert, Unix, UTC
    let description: String?    // Description of the alert
    
    enum CodingKeys: String, CodingKey {
        case senderName = "sender_name"
        case event
        case start
        case end
        case description
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(senderName, forKey: .senderName)
        try container.encode(event, forKey: .event)
        try container.encode(start, forKey: .start)
        try container.encode(end, forKey: .end)
        try container.encode(description, forKey: .description)
    }
}

// FeelsLike data holds as almost all data as Temperature data structure
// except min and max values
typealias FeelsLike = Temperature

typealias Hourly = Array<Weather>


