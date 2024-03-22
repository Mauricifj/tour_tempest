const currentWeatherResponse = '''
{
  "coord": {
    "lon": -0.1257,
    "lat": 51.5085
  },
  "weather": [
    {
      "id": 804,
      "main": "Clouds",
      "description": "overcast clouds",
      "icon": "04d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 11.55,
    "feels_like": 10.46,
    "temp_min": 9.95,
    "temp_max": 12.66,
    "pressure": 1015,
    "humidity": 65
  },
  "visibility": 10000,
  "wind": {
    "speed": 5.14,
    "deg": 280
  },
  "clouds": {
    "all": 100
  },
  "dt": 1711125281,
  "sys": {
    "type": 2,
    "id": 2075535,
    "country": "GB",
    "sunrise": 1711087072,
    "sunset": 1711131397
  },
  "timezone": 0,
  "id": 2643743,
  "name": "London",
  "cod": 200
}
''';

const forecastResponse = '''
{
  "cod": "200",
  "message": 0,
  "cnt": 40,
  "list": [
    {
      "dt": 1711130400,
      "main": {
        "temp": 11.56,
        "feels_like": 10.47,
        "temp_min": 9.78,
        "temp_max": 11.56,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 1013,
        "humidity": 65,
        "temp_kf": 1.78
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 86
      },
      "wind": {
        "speed": 4.59,
        "deg": 292,
        "gust": 8.02
      },
      "visibility": 10000,
      "pop": 0.06,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-22 18:00:00"
    },
    {
      "dt": 1711141200,
      "main": {
        "temp": 10.2,
        "feels_like": 8.95,
        "temp_min": 7.47,
        "temp_max": 10.2,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1014,
        "humidity": 64,
        "temp_kf": 2.73
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 71
      },
      "wind": {
        "speed": 4.3,
        "deg": 294,
        "gust": 9.24
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-22 21:00:00"
    },
    {
      "dt": 1711152000,
      "main": {
        "temp": 7.83,
        "feels_like": 4.97,
        "temp_min": 5.96,
        "temp_max": 7.83,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1013,
        "humidity": 69,
        "temp_kf": 1.87
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 53
      },
      "wind": {
        "speed": 4.78,
        "deg": 276,
        "gust": 10.3
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-23 00:00:00"
    },
    {
      "dt": 1711162800,
      "main": {
        "temp": 4.78,
        "feels_like": 0.97,
        "temp_min": 4.78,
        "temp_max": 4.78,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1013,
        "humidity": 75,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 12
      },
      "wind": {
        "speed": 5.2,
        "deg": 275,
        "gust": 10.9
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-23 03:00:00"
    },
    {
      "dt": 1711173600,
      "main": {
        "temp": 4.13,
        "feels_like": 0.26,
        "temp_min": 4.13,
        "temp_max": 4.13,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 1012,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 26
      },
      "wind": {
        "speed": 4.98,
        "deg": 265,
        "gust": 11.44
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-23 06:00:00"
    },
    {
      "dt": 1711184400,
      "main": {
        "temp": 6.5,
        "feels_like": 2.7,
        "temp_min": 6.5,
        "temp_max": 6.5,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1011,
        "humidity": 64,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 40
      },
      "wind": {
        "speed": 6.26,
        "deg": 274,
        "gust": 11.55
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-23 09:00:00"
    },
    {
      "dt": 1711195200,
      "main": {
        "temp": 8.53,
        "feels_like": 4.99,
        "temp_min": 8.53,
        "temp_max": 8.53,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1009,
        "humidity": 55,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 70
      },
      "wind": {
        "speed": 7.21,
        "deg": 271,
        "gust": 10.65
      },
      "visibility": 10000,
      "pop": 0.78,
      "rain": {
        "3h": 0.78
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-23 12:00:00"
    },
    {
      "dt": 1711206000,
      "main": {
        "temp": 8.39,
        "feels_like": 4.93,
        "temp_min": 8.39,
        "temp_max": 8.39,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1008,
        "humidity": 59,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 98
      },
      "wind": {
        "speed": 6.82,
        "deg": 286,
        "gust": 11.33
      },
      "visibility": 10000,
      "pop": 1,
      "rain": {
        "3h": 0.99
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-23 15:00:00"
    },
    {
      "dt": 1711216800,
      "main": {
        "temp": 7.1,
        "feels_like": 3.78,
        "temp_min": 7.1,
        "temp_max": 7.1,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1008,
        "humidity": 65,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 55
      },
      "wind": {
        "speed": 5.43,
        "deg": 278,
        "gust": 11.3
      },
      "visibility": 10000,
      "pop": 0.8,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-23 18:00:00"
    },
    {
      "dt": 1711227600,
      "main": {
        "temp": 5.95,
        "feels_like": 1.97,
        "temp_min": 5.95,
        "temp_max": 5.95,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1008,
        "humidity": 70,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 29
      },
      "wind": {
        "speed": 6.33,
        "deg": 267,
        "gust": 12.44
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-23 21:00:00"
    },
    {
      "dt": 1711238400,
      "main": {
        "temp": 6.17,
        "feels_like": 2.18,
        "temp_min": 6.17,
        "temp_max": 6.17,
        "pressure": 1010,
        "sea_level": 1010,
        "grnd_level": 1007,
        "humidity": 73,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 41
      },
      "wind": {
        "speed": 6.54,
        "deg": 276,
        "gust": 13.89
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-24 00:00:00"
    },
    {
      "dt": 1711249200,
      "main": {
        "temp": 5.9,
        "feels_like": 1.89,
        "temp_min": 5.9,
        "temp_max": 5.9,
        "pressure": 1010,
        "sea_level": 1010,
        "grnd_level": 1007,
        "humidity": 74,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 68
      },
      "wind": {
        "speed": 6.38,
        "deg": 286,
        "gust": 13.46
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-24 03:00:00"
    },
    {
      "dt": 1711260000,
      "main": {
        "temp": 5.7,
        "feels_like": 1.58,
        "temp_min": 5.7,
        "temp_max": 5.7,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1008,
        "humidity": 69,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 69
      },
      "wind": {
        "speed": 6.53,
        "deg": 299,
        "gust": 13.3
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-24 06:00:00"
    },
    {
      "dt": 1711270800,
      "main": {
        "temp": 7.08,
        "feels_like": 3.56,
        "temp_min": 7.08,
        "temp_max": 7.08,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1009,
        "humidity": 64,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 5.94,
        "deg": 301,
        "gust": 11.44
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-24 09:00:00"
    },
    {
      "dt": 1711281600,
      "main": {
        "temp": 9.28,
        "feels_like": 6.38,
        "temp_min": 9.28,
        "temp_max": 9.28,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1009,
        "humidity": 54,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 98
      },
      "wind": {
        "speed": 5.86,
        "deg": 302,
        "gust": 8.81
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-24 12:00:00"
    },
    {
      "dt": 1711292400,
      "main": {
        "temp": 10.3,
        "feels_like": 8.74,
        "temp_min": 10.3,
        "temp_max": 10.3,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1009,
        "humidity": 52,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 96
      },
      "wind": {
        "speed": 4.21,
        "deg": 293,
        "gust": 6.97
      },
      "visibility": 10000,
      "pop": 0.26,
      "rain": {
        "3h": 0.13
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-24 15:00:00"
    },
    {
      "dt": 1711303200,
      "main": {
        "temp": 9.18,
        "feels_like": 8.08,
        "temp_min": 9.18,
        "temp_max": 9.18,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1009,
        "humidity": 57,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 75
      },
      "wind": {
        "speed": 2.19,
        "deg": 298,
        "gust": 4.7
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-24 18:00:00"
    },
    {
      "dt": 1711314000,
      "main": {
        "temp": 7.02,
        "feels_like": 6,
        "temp_min": 7.02,
        "temp_max": 7.02,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1009,
        "humidity": 72,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 70
      },
      "wind": {
        "speed": 1.72,
        "deg": 243,
        "gust": 2.96
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-24 21:00:00"
    },
    {
      "dt": 1711324800,
      "main": {
        "temp": 5.77,
        "feels_like": 4.7,
        "temp_min": 5.77,
        "temp_max": 5.77,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1008,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 64
      },
      "wind": {
        "speed": 1.6,
        "deg": 229,
        "gust": 3.08
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-25 00:00:00"
    },
    {
      "dt": 1711335600,
      "main": {
        "temp": 5.41,
        "feels_like": 4.55,
        "temp_min": 5.41,
        "temp_max": 5.41,
        "pressure": 1009,
        "sea_level": 1009,
        "grnd_level": 1006,
        "humidity": 79,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 94
      },
      "wind": {
        "speed": 1.4,
        "deg": 177,
        "gust": 2.84
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-25 03:00:00"
    },
    {
      "dt": 1711346400,
      "main": {
        "temp": 5.64,
        "feels_like": 4.3,
        "temp_min": 5.64,
        "temp_max": 5.64,
        "pressure": 1007,
        "sea_level": 1007,
        "grnd_level": 1004,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 97
      },
      "wind": {
        "speed": 1.82,
        "deg": 152,
        "gust": 6.06
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-25 06:00:00"
    },
    {
      "dt": 1711357200,
      "main": {
        "temp": 8.35,
        "feels_like": 6.27,
        "temp_min": 8.35,
        "temp_max": 8.35,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 1002,
        "humidity": 72,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.43,
        "deg": 170,
        "gust": 6.68
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-25 09:00:00"
    },
    {
      "dt": 1711368000,
      "main": {
        "temp": 10.43,
        "feels_like": 8.91,
        "temp_min": 10.43,
        "temp_max": 10.43,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 1000,
        "humidity": 53,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.94,
        "deg": 161,
        "gust": 6.55
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-25 12:00:00"
    },
    {
      "dt": 1711378800,
      "main": {
        "temp": 9.74,
        "feels_like": 7.42,
        "temp_min": 9.74,
        "temp_max": 9.74,
        "pressure": 1001,
        "sea_level": 1001,
        "grnd_level": 998,
        "humidity": 54,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.61,
        "deg": 141,
        "gust": 6.18
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-25 15:00:00"
    },
    {
      "dt": 1711389600,
      "main": {
        "temp": 8.72,
        "feels_like": 6.63,
        "temp_min": 8.72,
        "temp_max": 8.72,
        "pressure": 999,
        "sea_level": 999,
        "grnd_level": 996,
        "humidity": 62,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.6,
        "deg": 121,
        "gust": 7.98
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-25 18:00:00"
    },
    {
      "dt": 1711400400,
      "main": {
        "temp": 8.28,
        "feels_like": 5.68,
        "temp_min": 8.28,
        "temp_max": 8.28,
        "pressure": 997,
        "sea_level": 997,
        "grnd_level": 994,
        "humidity": 65,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.45,
        "deg": 93,
        "gust": 9.52
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-25 21:00:00"
    },
    {
      "dt": 1711411200,
      "main": {
        "temp": 7.87,
        "feels_like": 5.11,
        "temp_min": 7.87,
        "temp_max": 7.87,
        "pressure": 994,
        "sea_level": 994,
        "grnd_level": 991,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.57,
        "deg": 89,
        "gust": 10.52
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-26 00:00:00"
    },
    {
      "dt": 1711422000,
      "main": {
        "temp": 7.21,
        "feels_like": 4.2,
        "temp_min": 7.21,
        "temp_max": 7.21,
        "pressure": 991,
        "sea_level": 991,
        "grnd_level": 988,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.77,
        "deg": 91,
        "gust": 10.98
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-26 03:00:00"
    },
    {
      "dt": 1711432800,
      "main": {
        "temp": 6.91,
        "feels_like": 3.85,
        "temp_min": 6.91,
        "temp_max": 6.91,
        "pressure": 989,
        "sea_level": 989,
        "grnd_level": 985,
        "humidity": 70,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.72,
        "deg": 91,
        "gust": 9.7
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-26 06:00:00"
    },
    {
      "dt": 1711443600,
      "main": {
        "temp": 7.29,
        "feels_like": 4.28,
        "temp_min": 7.29,
        "temp_max": 7.29,
        "pressure": 986,
        "sea_level": 986,
        "grnd_level": 983,
        "humidity": 72,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.81,
        "deg": 94,
        "gust": 8.52
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-26 09:00:00"
    },
    {
      "dt": 1711454400,
      "main": {
        "temp": 7.48,
        "feels_like": 4.75,
        "temp_min": 7.48,
        "temp_max": 7.48,
        "pressure": 984,
        "sea_level": 984,
        "grnd_level": 981,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.32,
        "deg": 107,
        "gust": 7.06
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-26 12:00:00"
    },
    {
      "dt": 1711465200,
      "main": {
        "temp": 7.93,
        "feels_like": 5.7,
        "temp_min": 7.93,
        "temp_max": 7.93,
        "pressure": 981,
        "sea_level": 981,
        "grnd_level": 978,
        "humidity": 92,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.55,
        "deg": 100,
        "gust": 9.33
      },
      "visibility": 10000,
      "pop": 0.35,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-26 15:00:00"
    },
    {
      "dt": 1711476000,
      "main": {
        "temp": 8.88,
        "feels_like": 6.67,
        "temp_min": 8.88,
        "temp_max": 8.88,
        "pressure": 981,
        "sea_level": 981,
        "grnd_level": 978,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.91,
        "deg": 187,
        "gust": 8.78
      },
      "visibility": 10000,
      "pop": 0.5,
      "rain": {
        "3h": 0.41
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-26 18:00:00"
    },
    {
      "dt": 1711486800,
      "main": {
        "temp": 6.68,
        "feels_like": 4.85,
        "temp_min": 6.68,
        "temp_max": 6.68,
        "pressure": 981,
        "sea_level": 981,
        "grnd_level": 978,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 2.55,
        "deg": 177,
        "gust": 7.76
      },
      "visibility": 10000,
      "pop": 0.02,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-26 21:00:00"
    },
    {
      "dt": 1711497600,
      "main": {
        "temp": 6.13,
        "feels_like": 3.81,
        "temp_min": 6.13,
        "temp_max": 6.13,
        "pressure": 980,
        "sea_level": 980,
        "grnd_level": 977,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.07,
        "deg": 141,
        "gust": 9.39
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-27 00:00:00"
    },
    {
      "dt": 1711508400,
      "main": {
        "temp": 5.67,
        "feels_like": 2.77,
        "temp_min": 5.67,
        "temp_max": 5.67,
        "pressure": 979,
        "sea_level": 979,
        "grnd_level": 976,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 69
      },
      "wind": {
        "speed": 3.85,
        "deg": 133,
        "gust": 10.96
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-03-27 03:00:00"
    },
    {
      "dt": 1711519200,
      "main": {
        "temp": 6.1,
        "feels_like": 3.06,
        "temp_min": 6.1,
        "temp_max": 6.1,
        "pressure": 978,
        "sea_level": 978,
        "grnd_level": 975,
        "humidity": 83,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 80
      },
      "wind": {
        "speed": 4.29,
        "deg": 130,
        "gust": 9.6
      },
      "visibility": 10000,
      "pop": 0.06,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-27 06:00:00"
    },
    {
      "dt": 1711530000,
      "main": {
        "temp": 7.01,
        "feels_like": 4.1,
        "temp_min": 7.01,
        "temp_max": 7.01,
        "pressure": 978,
        "sea_level": 978,
        "grnd_level": 975,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.45,
        "deg": 145,
        "gust": 8.18
      },
      "visibility": 10000,
      "pop": 0.27,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-27 09:00:00"
    },
    {
      "dt": 1711540800,
      "main": {
        "temp": 7.95,
        "feels_like": 5.46,
        "temp_min": 7.95,
        "temp_max": 7.95,
        "pressure": 978,
        "sea_level": 978,
        "grnd_level": 975,
        "humidity": 75,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.05,
        "deg": 162,
        "gust": 7.78
      },
      "visibility": 10000,
      "pop": 0.31,
      "rain": {
        "3h": 0.22
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-27 12:00:00"
    },
    {
      "dt": 1711551600,
      "main": {
        "temp": 10.89,
        "feels_like": 9.29,
        "temp_min": 10.89,
        "temp_max": 10.89,
        "pressure": 978,
        "sea_level": 978,
        "grnd_level": 975,
        "humidity": 48,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 97
      },
      "wind": {
        "speed": 5.92,
        "deg": 161,
        "gust": 9.63
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-03-27 15:00:00"
    }
  ],
  "city": {
    "id": 2643743,
    "name": "London",
    "coord": {
      "lat": 51.5085,
      "lon": -0.1257
    },
    "country": "GB",
    "population": 1000000,
    "timezone": 0,
    "sunrise": 1711087072,
    "sunset": 1711131397
  }
}
''';
