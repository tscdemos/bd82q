namespace vegetableStore;

entity Product {
  key ID: UUID;
  productName: String(200);
  productDescription: String(500);
  price: Decimal(10,2);
  warehouse: Association to Warehouse;
  discounts: Composition of many Discount on discounts.product = $self;
  salad: Association to Salad;
}

entity Salad {
  key ID: UUID;
  saladName: String(200);
  recipe: String(1000);
  products: Association to many Product on products.salad = $self;
}

entity Warehouse {
  key ID: UUID;
  warehouseName: String(200);
  stock: Integer;
  products: Association to many Product on products.warehouse = $self;
}

entity Discount {
  key ID: UUID;
  discountName: String(200);
  discountPercentage: Decimal(3,2);
  product: Association to Product;
}

