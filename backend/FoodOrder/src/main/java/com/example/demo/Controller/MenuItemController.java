package com.example.demo.Controller;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Model.RestaurantsMenu;
import com.example.demo.Service.MenuItemService;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/menu")
public class MenuItemController {

    private final MenuItemService menuItemService;

    public MenuItemController(MenuItemService menuItemService) {
        this.menuItemService = menuItemService;
    }

//    @PostMapping("/add")
//    public ResponseEntity<RestaurantsMenu> addMenuItem(@RequestBody RestaurantsMenu menuItem) {
//        return ResponseEntity.ok(menuItemService.saveMenuItem(menuItem));
//    }
    @PostMapping("/add")
    public ResponseEntity<RestaurantsMenu> addProduct(
    	    @RequestParam("adminId") Long adminId,
    	    @RequestParam("name") String name,
    	    @RequestParam("description") String description,
    	    @RequestParam("type") String type,
    	    @RequestParam("category") String category,
    	    @RequestParam("price") double price,
    	    @RequestPart("imageUrl") MultipartFile imageUrl
    	)  {
        try {
            String image = menuItemService.saveFile(imageUrl);

            RestaurantsMenu RestaurantsMenu = new RestaurantsMenu();
            RestaurantsMenu.setAdminId(adminId);
            RestaurantsMenu.setName(name);
            RestaurantsMenu.setDescription(description);
            RestaurantsMenu.setType(type);
            RestaurantsMenu.setCategory(category);
            RestaurantsMenu.setPrice(price);
            RestaurantsMenu.setImageUrl(image);

            RestaurantsMenu savedProduct = menuItemService.saveOrUpdateMenuItem(RestaurantsMenu);
            return ResponseEntity.ok(savedProduct);

        } catch (IOException e) {
            return ResponseEntity.internalServerError().build();
        }
    }
    @GetMapping("/files/{filename}")
    public ResponseEntity<Resource> getFile(@PathVariable String filename) throws Exception {
        Path filePath = Paths.get("uploads/").resolve(filename);
        Resource resource = new UrlResource(filePath.toUri());

        if (!resource.exists()) {
            return ResponseEntity.notFound().build();
        }

        // Detect content type
        String contentType = "application/octet-stream"; 
        try {
            contentType = java.nio.file.Files.probeContentType(filePath);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=\"" + resource.getFilename() + "\"")
                .header(HttpHeaders.CONTENT_TYPE, contentType)
                .body(resource);
    }


    @PutMapping("/update/{id}")
    public ResponseEntity<RestaurantsMenu> updateMenuItem(@PathVariable Long id, @RequestBody RestaurantsMenu menuItem) {
    	RestaurantsMenu updatedItem = menuItemService.updateMenuItem(id, menuItem);
        return updatedItem != null ? ResponseEntity.ok(updatedItem) : ResponseEntity.notFound().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteMenuItem(@PathVariable Long id) {
        menuItemService.deleteMenuItem(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/all")
    public ResponseEntity<List<RestaurantsMenu>> getAllMenuItems() {
        return ResponseEntity.ok(menuItemService.getAllMenuItems());
    }

    @GetMapping("/admin/{adminId}")
    public ResponseEntity<List<RestaurantsMenu>> getMenuItemsByAdminId(@PathVariable Long adminId) {
        return ResponseEntity.ok(menuItemService.getMenuItemsByAdminId(adminId));
    }

    @GetMapping("/{id}")
    public ResponseEntity<RestaurantsMenu> getMenuItemById(@PathVariable Long id) {
        Optional<RestaurantsMenu> menuItem = menuItemService.getMenuItemById(id);
        return menuItem.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }
}

