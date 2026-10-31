CREATE TABLE waterquality (
    record_id BIGSERIAL NOT NULL PRIMARY KEY,
    record_time TIMESTAMPTZ NOT NULL,
    station_id VARCHAR(8) NOT NULL,
    ph_level REAL CHECK (ph_level <= 14),
    solids_concentration_ppm REAL,
    turbidity_ntu REAL,
    bio_contaminants BOOLEAN NULL,
    chem_contaminants BOOLEAN NULL
);

ALTER TABLE waterquality
    ADD CONSTRAINT noNegValWater CHECK (solids_concentration_ppm >= 0 AND
                                          turbidity_ntu >= 0 AND
                                          ph_level >= 0);

CREATE INDEX idxRecordTimeWater
    ON waterquality (record_time);