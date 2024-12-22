package com.app.service.inventory.itemType;

import com.app.entity.inventory.ItemTypeEntity;
import com.app.entity.inventory.MeasurementTypeEntity;

import java.util.List;
import java.util.Map;

public interface ItemTypeService {
    void saveUpdateItemType(Map<String,Object> param);
    void saveUpdateMeasurementType(Map<String,Object> param);
    List<ItemTypeEntity> getAllItemType();
    List<MeasurementTypeEntity>getAllMeasurementType();
}
