package com.app.mvc;

import com.app.entity.inventory.ItemTypeEntity;
import com.app.service.inventory.itemType.ItemTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

@Controller
@RequestMapping("/mvc/inventory")
public class InventoryMvcController {

    @Autowired
    private ItemTypeService itemTypeService;

    @GetMapping("/itemType")
    public String getItemTypeView(Model model){
        List<ItemTypeEntity> allItemTypeList = itemTypeService.getAllItemType();//
        model.addAttribute("allItemTypeList",allItemTypeList);
        return "inventory/item_type";
    }
    @GetMapping("/measurementType")
    public String getMeasurementView(Model model){
       model.addAttribute("measurementTypeList",itemTypeService.getAllMeasurementType());
        return "inventory/measurementType";
    }

    @GetMapping("/item")
    public String item(){
        return "inventory/item";
    }

}
