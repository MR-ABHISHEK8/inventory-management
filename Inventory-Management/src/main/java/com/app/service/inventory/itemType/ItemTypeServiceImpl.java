package com.app.service.inventory.itemType;

import com.app.entity.inventory.ItemTypeEntity;
import com.app.entity.inventory.MeasurementTypeEntity;
import com.app.repo.inventory.ItemTypeRepo;
import com.app.repo.inventory.MeasurementTypeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ItemTypeServiceImpl implements ItemTypeService {

    @Autowired
    private ItemTypeRepo itemTypeRepo;
    @Autowired
    private MeasurementTypeRepo measurementTypeRepo;

    public void saveUpdateItemType(Map<String, Object> param) {

        String name = String.valueOf(param.get("name"));
        String prefix = String.valueOf(param.get("prefix"));
        String suffix = String.valueOf(param.get("suffix"));
        String separator = String.valueOf(param.get("separator"));
        String zero_padding = String.valueOf(param.get("zero_padding"));
        String start_no = String.valueOf(param.get("start_no"));

        ItemTypeEntity entity = new ItemTypeEntity();
        entity.setName(name);
        entity.setPrefix(prefix);
        entity.setSeparator(separator);
        entity.setSuffix(suffix);
        entity.setZeroPadding(Long.valueOf(zero_padding));
        entity.setStartNo(Long.valueOf(start_no));
        itemTypeRepo.save(entity);    //Save the file
    }

    public List<ItemTypeEntity> getAllItemType() {
        return itemTypeRepo.findAll();      // get the file in Data base
    }

    public void saveUpdateMeasurementType(Map<String,Object>param){
        String name=String.valueOf(param.get("name"));
        MeasurementTypeEntity entity= new MeasurementTypeEntity();
        entity.setName(name);
        measurementTypeRepo.save(entity);
    }

    public List<MeasurementTypeEntity>getAllMeasurementType(){
        return measurementTypeRepo.findAll();
    }

    public Map<String,Object>getItemBasicDetails(){
        Map<String,Object>resultMap= new HashMap<>();
        List<ItemTypeEntity> itemTypeList = itemTypeRepo.findAll();

        resultMap.put("itemTypeList",itemTypeList);
        resultMap.put("measurementTypeList",measurementTypeRepo.findAll());
        return resultMap;
    }
}

