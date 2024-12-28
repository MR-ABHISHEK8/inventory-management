package com.app.repo.inventory;

import com.app.entity.inventory.ItemEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ItemRepo  extends JpaRepository<ItemEntity,Long> {
}
