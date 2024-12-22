package com.app.repo.inventory;

import com.app.entity.inventory.MeasurementTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;


public interface MeasurementTypeRepo extends JpaRepository<MeasurementTypeEntity,Long> {

}
