INSERT INTO stations (station_id, station_type, station_location, station_altitude_m, station_last_maintained)
VALUES ('WQ-01', 'WaterMonitor', 'Paraquita Bay T', 0, NULL),
       ('WQ-02', 'WaterMonitor', 'White Bay JVD', 0, NULL),
       ('AQ-01', 'AirMonitor', 'Paraquita Bay T', 12, NULL),
       ('AQ-02', 'AirMonitor', 'Road Town T', 15, NULL);

CREATE INDEX idxStationType
    ON stations (station_type);