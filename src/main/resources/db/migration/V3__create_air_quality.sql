CREATE TABLE airquality (
    record_id BIGSERIAL NOT NULL PRIMARY KEY,
    record_time TIMESTAMPTZ NOT NULL,
    station_id VARCHAR(8) NOT NULL,
    particle_matter_ppb REAL CHECK (particle_matter_ppb <= 300),
    nitrogen_dioxide_ppb REAL CHECK (nitrogen_dioxide_ppb <= 200),
    sulfur_dioxide_ppb REAL CHECK (sulfur_dioxide_ppb <= 150),
    carbon_monoxide_ppb REAL CHECK (carbon_monoxide_ppb <= 30000)
);

ALTER TABLE airquality
    ADD CONSTRAINT noNegValAir CHECK (particle_matter_ppb >= 0 AND
                                      nitrogen_dioxide_ppb >= 0 AND
                                      sulfur_dioxide_ppb >= 0 AND
                                      carbon_monoxide_ppb >= 0);

CREATE INDEX idxRecordTimeAir
    ON airquality (record_time);
