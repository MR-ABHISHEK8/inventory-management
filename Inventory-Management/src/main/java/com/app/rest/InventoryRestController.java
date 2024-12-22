package com.app.rest;

import com.app.service.inventory.itemType.ItemTypeService;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/rest/inventory")
public class InventoryRestController {

    @Autowired
    private ItemTypeService itemTypeService;

    @PostMapping("/saveUpdateItemType")
    public void saveUpdateItemType(@RequestParam Map<String, Object>param, HttpServletResponse response)throws Exception{
        itemTypeService.saveUpdateItemType(param);
        response.sendRedirect("/mvc/inventory/itemType");
    }

    @PostMapping("/saveUpdateMeasurementType")
    public void saveUpdateMeasurementType(@RequestParam Map<String, Object>param, HttpServletResponse response)throws Exception{
        itemTypeService.saveUpdateMeasurementType(param);
        response.sendRedirect("/mvc/inventory/measurementType");
    }
}