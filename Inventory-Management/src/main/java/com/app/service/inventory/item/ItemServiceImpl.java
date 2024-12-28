package com.app.service.inventory.item;

import com.app.entity.inventory.ItemEntity;
import com.app.repo.inventory.ItemRepo;
import com.app.service.inventory.item.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
     private ItemRepo itemRepo;
    @Override
    public ItemEntity createItem(ItemEntity itemEntity) {
        return itemRepo.save(itemEntity);
    }
}
