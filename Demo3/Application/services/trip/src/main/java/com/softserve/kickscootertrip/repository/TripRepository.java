package com.softserve.kickscootertrip.repository;

import com.softserve.kickscootertrip.dto.TripStatus;
import com.softserve.kickscootertrip.model.TripEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

public interface TripRepository extends JpaRepository<TripEntity, Long> {
    List<TripEntity> findByUserId(UUID id);

    public TripEntity findByScooterIdAndStatus(UUID scooterId, TripStatus tripStatus);
}
