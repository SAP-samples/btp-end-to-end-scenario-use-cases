# BiteRight API Documentation

## Overview

The **BiteRight API** provides access to today’s catering menu and allows customers to request discount vouchers for specific menu items.
The API consists of two main endpoints:

1. **Menu Endpoint** – retrieves today’s menu.
2. **Voucher Endpoint** – generates a voucher code for a selected menu item.

---

## Authentication

Currently, the API is **open** and does not require authentication.
(If authentication will be added later, e.g. API keys or OAuth2, it should be described here.)

---

## Endpoints

### 1. Get Today’s Menu

* **URL:**

  ```
  https://{host}/odata/v4/catalog/Menu
  ```
* **Method:**
  `GET`
* **Description:**
  Returns today’s menu as an OData entity collection.
* **Response Example:**

  ```json
  [
    {
      "name": "Grilled Chicken Salad",
      "description": "Fresh greens with grilled chicken breast and light dressing",
      "price": 12,
      "specialPrice": 9,
      "isTodaysSpecial": true
    },
    {
      "name": "Vegetarian Wrap",
      "description": "Whole grain wrap with seasonal vegetables and hummus",
      "price": 8,
      "specialPrice": null,
      "isTodaysSpecial": false
    }
  ]
  ```

---

### 2. Generate Voucher

* **URL:**

  ```
  https://{host}/odata/v4/catalog/Voucher/getVoucher
  ```
* **Method:**
  `POST`
* **Description:**
  Generates a voucher code for a specific menu item.
* **Request Body:**

  ```json
  {
    "menuItem": "Grilled Chicken Salad",
    "email": "customer@example.com"
  }
  ```
* **Response Example:**

  ```json
  {
    "voucherCode": "ABCDEF1234"
  }
  ```

---

## Error Handling

* `400 Bad Request` – invalid or missing request parameters.
* `404 Not Found` – menu item not found.
* `500 Internal Server Error` – unexpected server error.
