// async function fetchRestaurantMenu(id,name) {
//     sessionStorage.setItem("CurrentRestaurant", id);
//     sessionStorage.setItem("CurrentRestaurantName", name);
//     window.location.href="menuItems.html"
    
// }

// // Function to create a restaurant card
// function createRestaurantCard(restaurant) {
//     return `
//         <div class="restaurant-card" onclick="fetchRestaurantMenu(${restaurant.id},'${restaurant.restaurantName}')">
//             <img src="http://localhost:8080/api/users/files/${restaurant.imageFile}" alt="${restaurant.restaurantName}" class="restaurant-image">
//             <div class="restaurant-info">
//                 <h3>${restaurant.restaurantName}</h3>
//                 <div class="rating">
//                     <i class="fas fa-star"></i> 4.2
//                 </div>
//             </div>
//         </div>
//     `;
// }
// async function fetchRestaurants() {
//     try {
//         const response = await fetch('http://localhost:8080/api/users/restaurants');
//         const data = await response.json();
//         return data;
//     } catch (error) {
//         console.error("Error fetching restaurants:", error);
//         return [];
//     }
// }


// async function renderRestaurants(category = 'all') {
//     const restaurants = await fetchRestaurants();
//     const filteredRestaurants = category === 'all' 
//         ? restaurants 
//         : restaurants.filter(restaurant => restaurant.type === category);

//     const restaurantList = document.getElementById('restaurantList');
//     restaurantList.innerHTML = filteredRestaurants.map(createRestaurantCard).join('');
// }

// // Initialize the page
// document.addEventListener('DOMContentLoaded', async () => {
//     await renderRestaurants(); // Load all restaurants initially

//     // Add click handlers to category tabs
//     const tabs = document.querySelectorAll('.tab');
//     tabs.forEach(tab => {
//         tab.addEventListener('click', async () => {
//             tabs.forEach(t => t.classList.remove('active'));
//             tab.classList.add('active');
//             await renderRestaurants(tab.dataset.category);
//         });
//     });

//     // Add scroll animation for navbar
//     window.addEventListener('scroll', () => {
//         const navbar = document.querySelector('.navbar');
//         navbar.style.boxShadow = window.scrollY > 50 
//             ? '0 2px 8px rgba(0,0,0,0.1)' 
//             : '0 2px 4px rgba(0,0,0,0.1)';
//     });
// });
async function fetchRestaurantMenu(id, name) {
    sessionStorage.setItem("CurrentRestaurant", id);
    sessionStorage.setItem("CurrentRestaurantName", name);
    window.location.href = "menuItems.html";
}
        let currentRestaurant =sessionStorage.getItem("CurrentRestaurant");
        let CustomerId =sessionStorage.getItem("customerId");
        let currentRestaurantName =sessionStorage.getItem("CurrentRestaurantName");

// Function to create a restaurant card
function createRestaurantCard(restaurant) {
    return `
        <div class="restaurant-card" onclick='fetchRestaurantMenu(${restaurant.id}, "${encodeURIComponent(restaurant.restaurantName)}")'>
            <img src="http://localhost:8080/api/users/files/${restaurant.imageFile}" alt="${restaurant.restaurantName}" class="restaurant-image">
            <div class="restaurant-info">
                <h3>${restaurant.restaurantName}</h3>
                <div class="rating">
                    <i class="fas fa-star"></i> 4.2
                </div>
            </div>
        </div>
    `;
}

function showCart() {
    let cart = sessionStorage.getItem('cart');

    // If cart is not null, parse it into an array
    if (cart) {
        cart = JSON.parse(cart);
    } else {
        cart = []; // Initialize as an empty array if cart is not in sessionStorage
    }

    
    // Get modal and cart items container elements
    const modal = document.getElementById('cartModal');
    const cartItems = document.getElementById('cartItems');
    const cartTotal = document.getElementById('cartTotal');
    
    // Clear any existing cart items in the modal
    cartItems.innerHTML = ''; 

    // Initialize total amount to 0
    let total = 0;

    // Loop through each item in the cart
    cart.forEach(item => {
        const itemTotal = item.price * item.quantity;
        total += itemTotal;

        // Add each cart item to the modal
        cartItems.innerHTML += `
            <div class="cart-item">
                <span>${item.name} x ${item.quantity}</span>
                <span>Rs.${itemTotal.toFixed(2)}</span>
                <button onclick="removeFromCart(${item.id})" class="remove-from-cart" data-id="${item.id}" style="background-color: red; color: white; border: none; padding: 5px; border-radius: 5px; cursor: pointer;">Remove</buttonv>
            </div>
        `;
    });

    // Set the total price in the modal
    cartTotal.textContent = total.toFixed(2);

    // Show the modal
    modal.style.display = 'block';
}
let cart = sessionStorage.getItem('cart');

    // If cart is not null, parse it into an array
    if (cart) {
        cart = JSON.parse(cart);
    } else {
        cart = []; // Initialize as an empty array if cart is not in sessionStorage
    }
function updateCartCount() {
    
    const cartCount = document.getElementById('cart-count');
    const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
    cartCount.textContent = totalItems;
}
updateCartCount()
function removeFromCart(itemId) {
    cart = cart.filter(item => item.id !== itemId);
    updateCartSession();
    showCart();
}
function updateCartSession() {
    sessionStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
}
document.querySelector('.cart-icon').addEventListener('click', showCart);
    document.querySelector('.close').addEventListener('click', () => {
        document.getElementById('cartModal').style.display = 'none';
    });

    function checkout() {

            
        if (cart.length === 0) {
            alert('Your cart is empty!');
            return;
        }
        if(CustomerId==null||!CustomerId||CustomerId==undefined||CustomerId==""){
            alert("Please Login First!");
            window.location.href = "Login.html";
            return;
        }
        let cartTotal = document.getElementById('cartTotal').innerText;
        cartTotal=parseFloat(cartTotal.toString());
        let order={
            userId: CustomerId,
            totalAmount : cartTotal.toString(),
            orderProducts: cart.map(item => ({
                productId: item.id,
                quantity: item.quantity,
                price: item.price
            }))
        }
        

        sessionStorage.setItem("order", JSON.stringify(order));
        sessionStorage.setItem('totalAmount', cartTotal);
        window.location.href = "Address.html";
    }
    
    window.onclick = (event) => {
        const modal = document.getElementById('cartModal');
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    };

async function fetchRestaurants() {
    try {
        const response = await fetch('http://localhost:8080/api/users/restaurants');
        if (!response.ok) throw new Error("Failed to fetch restaurants");
        return await response.json();
    } catch (error) {
        console.error("Error fetching restaurants:", error);
        return [];
    }
}

async function renderRestaurants(category = 'all', searchQuery = '') {
    const restaurantList = document.getElementById('restaurantList');
    restaurantList.innerHTML = "<p>Loading restaurants...</p>";

    const restaurants = await fetchRestaurants();

    // Filter by category
    let filteredRestaurants = category === 'all' 
        ? restaurants 
        : restaurants.filter(restaurant => restaurant.type === category);

    // Apply search filtering
    if (searchQuery.trim() !== '') {
        filteredRestaurants = filteredRestaurants.filter(restaurant =>
            restaurant.restaurantName.toLowerCase().includes(searchQuery.toLowerCase())
        );
    }

    if (filteredRestaurants.length === 0) {
        restaurantList.innerHTML = "<p>No restaurants found.</p>";
        return;
    }

    restaurantList.innerHTML = filteredRestaurants.map(createRestaurantCard).join('');
}

// Initialize the page
document.addEventListener('DOMContentLoaded', async () => {
    await renderRestaurants(); // Load all restaurants initially

    // Category filtering
    document.querySelectorAll('.tab').forEach(tab => {
        tab.addEventListener('click', async () => {
            document.querySelectorAll('.tab').forEach(t => t.classList.remove('active'));
            tab.classList.add('active');
            await renderRestaurants(tab.dataset.category, document.getElementById("searchInput").value);
        });
    });

    // Search functionality
    const searchInput = document.getElementById("searchInput");
    searchInput.addEventListener("keyup", async () => {
        await renderRestaurants(document.querySelector(".tab.active")?.dataset.category || 'all', searchInput.value);
    });

    // Navbar scroll effect
    window.addEventListener('scroll', () => {
        document.querySelector('.navbar').style.boxShadow = window.scrollY > 50 
            ? '0 2px 8px rgba(0,0,0,0.1)' 
            : '0 2px 4px rgba(0,0,0,0.1)';
    });
});
window.addEventListener("scroll", function () {
    let navbar = document.querySelector(".navbar");
    if (window.scrollY > 50) {
        navbar.classList.add("scrolled");
    } else {
        navbar.classList.remove("scrolled");
    }
});

