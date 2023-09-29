using { vegetableStore } from '../db/schema.cds';

service vegetableStoreSrv {
  entity Product as projection on vegetableStore.Product;
  entity Salad as projection on vegetableStore.Salad;
  entity Warehouse as projection on vegetableStore.Warehouse;
}