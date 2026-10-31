package com.ktrumpetq.environmentaldataservice.model;

import jakarta.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "stations")
public class Station {

    @Id
    @Column (name = "station_id", length = 5)
    private String stationId; // eg WQ-01

    @Enumerated(EnumType.STRING)
    @Column(name = "station_type", nullable = false, length = 50)
    private Type stationType; //eg WaterMonitor

    @Column(name = "station_location",length = 50)
    private String stationLocation; // eg Paraquita Bay

    @Column(name = "station_altitude_m",length = 50)
    private Float stationAltitudeM; // eg 15.5f

    @Column(name = "station_created_at",insertable = false, updatable = false)
    private Instant stationCreatedAt; // eg 2027.02.11

    @Column (name = "station_last_maintained")
    private Instant stationLastMaintained; // eg 2026.12.25

    @Override
    public String toString() {
        return "[stationType, stationID]";
    }

    protected Station() {}

    public Station(String id, Type type, String location) {
        this.stationId = id;
        this.stationType = type;
        this.stationLocation = location;
    }

    public enum Type {
        WaterMonitor, AirMonitor, WaterAerator, AirFilter
    }

    public String getId() { return stationId; }
    public Type getType() { return stationType; }
    public String getLocation() { return stationLocation; }
    public Float getAltitude() { return stationAltitudeM; }
    public Instant getCreatedAt() { return stationCreatedAt; }
    public Instant getLastMaintained() { return stationLastMaintained; }

}