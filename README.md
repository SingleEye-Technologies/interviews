## 🛠️ Product Listing App – Bug Fix Challenge

Welcome to the **Product Listing App** codebase! This project is a Flutter-based mobile application that fetches and displays a list of products from a server. The app is already set up and running, but it currently contains a few bugs that need fixing.

### 🎯 What You'll Be Working On

* The app fetches product data from a backend API and displays it in a styled list view.
* Each product item includes an **image, name, price, category, description**, and a pair of action icons (wishlist and cart).

### 🧩 Your Task

* Explore the codebase.
* Reorganize the app files into your preferred architecture.
You’re free to use any structure you're comfortable with (e.g., MVVM, Clean Architecture, Feature-based, etc.).
* Do not Run the app. 
* Identify and **fix any bugs** present in:

  * Data fetching & validation
  * Error handeling
  * Implement flavors using multiple entrypoints
  * State management (if applicable)
  * App Crashes, missing data or data validation

You are **not expected** to redesign the app or add new features – just **debug and stabilize** what's already there.

---

### 📡 API Response Example 

You can expect the mock server to return a response like this:

```json
{
  "products": [
    {
      "id": 1,
      "product_name": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      "product_price": 1009.95,
      "product_description": "Your perfect pack for everyday use camping...",
      "product_category": "Men's clothing",
      "product_image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      "rating": {
        "rating": 5.9,
        "count": 120
      }
    },
    ...
  ]
}
```

You will use this data to populate the UI for the product list.

---

### ✅ Expectations

By the end of your task, we expect:

* The app to correctly display the products from the Remote server API.
* No crashes or obvious bugs.
* Functional and visually consistent product tiles.

---

### Deliverables
By the end of the task, we expect:

 A clean, well-structured project with your preferred architecture.

 Fixed data-fetching issues (crashes, missing fields, etc.).

 No changes to UI visuals unless needed for data display.

 A working app using either the real server or the mock service.
