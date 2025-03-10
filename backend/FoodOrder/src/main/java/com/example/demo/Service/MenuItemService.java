package com.example.demo.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Model.RestaurantsMenu;
import com.example.demo.Repo.MenuItemRepository;

@Service
public class MenuItemService {
	
	@Autowired
	private MenuItemRepository repo;
	
	public RestaurantsMenu saveOrUpdateMenuItem(RestaurantsMenu restaurantsMenu) {
	    if (restaurantsMenu.getId() == null) {
	        return repo.save(restaurantsMenu);
	    }

	    return repo.findById(restaurantsMenu.getId())
	        .map(existingMenu -> {
	            existingMenu.setAdminId(restaurantsMenu.getAdminId());
	            existingMenu.setName(restaurantsMenu.getName());
	            existingMenu.setDescription(restaurantsMenu.getDescription());
	            existingMenu.setPrice(restaurantsMenu.getPrice());
	            existingMenu.setType(restaurantsMenu.getType());
	            existingMenu.setCategory(restaurantsMenu.getCategory());
	            existingMenu.setImageUrl(restaurantsMenu.getImageUrl());
	            return repo.save(existingMenu);
	        }).orElseGet(() -> repo.save(restaurantsMenu)); 
	}

	public RestaurantsMenu save(RestaurantsMenu RestaurantsMenu) {
        return repo.save(RestaurantsMenu);
    }

    public RestaurantsMenu updateMenuItem(Long id, RestaurantsMenu updatedItem) {
        return repo.findById(id).map(item -> {
            item.setName(updatedItem.getName());
            item.setDescription(updatedItem.getDescription());
            item.setPrice(updatedItem.getPrice());
            item.setCategory(updatedItem.getCategory());
            item.setType(updatedItem.getType());
            item.setImageUrl(updatedItem.getImageUrl());
            return repo.save(item);
        }).orElse(null);
    }

    public void deleteMenuItem(Long id) {
    	repo.deleteById(id);
    }

    public List<RestaurantsMenu> getAllMenuItems() {
        return repo.findAll();
    }

    public List<RestaurantsMenu> getMenuItemsByAdminId(Long adminId) {
        return repo.findByAdminId(adminId);
    }

    public Optional<RestaurantsMenu> getMenuItemById(Long id) {
        return repo.findById(id);
    }
    
    private static final String UPLOAD_DIR = System.getProperty("user.dir") + "/uploads/";

    public String saveFile(MultipartFile file) throws IOException {
        if (file.isEmpty()) {
            throw new IOException("File is empty");
        }

        // Ensure upload directory exists
        Path uploadPath = Paths.get(UPLOAD_DIR);
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }

        // Generate a unique filename to avoid conflicts
        String uniqueFileName = UUID.randomUUID() + "_" + file.getOriginalFilename();
        Path destinationPath = uploadPath.resolve(uniqueFileName);

        // Save the file
        try {
            file.transferTo(destinationPath.toFile());
        } catch (IOException e) {
            throw new IOException("File upload failed: " + e.getMessage(), e);
        }

        return uniqueFileName;
    }

}
