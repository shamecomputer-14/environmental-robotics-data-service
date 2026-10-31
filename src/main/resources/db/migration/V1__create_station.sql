CREATE TABLE stations(
    station_id VARCHAR(5) NOT NULL PRIMARY KEY,
    station_type VARCHAR(15) NOT NULL,
    station_location VARCHAR(50) NOT NULL,
    station_altitude_m REAL NOT NULL,
    station_created_at TIMESTAMPTZ,
    station_last_maintained TIMESTAMPTZ
)