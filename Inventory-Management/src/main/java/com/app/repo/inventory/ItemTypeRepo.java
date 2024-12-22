package com.app.repo.inventory;

import com.app.entity.inventory.ItemTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ItemTypeRepo extends JpaRepository<ItemTypeEntity,Long> {
}
