package com.example.demo.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Model.User;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/users")
@CrossOrigin("*")
public class UserController {

    @Autowired
    private com.example.demo.Service.UserService userService;

//    @PostMapping("/register")
//    public User registerUser(@RequestBody User user) {
//        return userService.registerUser(user);
//    }
    @PostMapping("/register")
    public ResponseEntity<User> addUser(
    	    @RequestParam("restaurantName") String restaurantName,
    	    @RequestParam("email") String email,
    	    @RequestParam("mobile") String mobile,
    	    @RequestParam("password") String password,
    	    @RequestPart("imageFile") MultipartFile imageFile
    	)  {
        try {
            String image = userService.saveFile(imageFile);

            User user = new User();
            user.setEmail(email);
            user.setImageFile(image);
            user.setMobile(mobile);
            user.setPassword(password);
            user.setRestaurantName(restaurantName);
           

            User saveUser = userService.registerUser(user);
            return ResponseEntity.ok(saveUser);

        } catch (IOException e) {
            return ResponseEntity.internalServerError().build();
        }
    }

    @PostMapping("/login")
    public Map<String, Object> loginUser(@RequestBody Map<String, String> loginData) {
        Optional<User> user = userService.loginUser(loginData.get("email"), loginData.get("password"));
        if (user.isPresent()) {
            return Map.of("message", "Login successful", "user", user.get());
        }
        return Map.of("message", "Invalid credentials");
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
                .header(HttpHeaders.CONTENT_TYPE, contentType) // Set correct content type
                .body(resource);
    }
    
    @GetMapping("/restaurants")
    public List<User> getRestaurants() {
        return userService.getAllRestaraunts();
    }

}

