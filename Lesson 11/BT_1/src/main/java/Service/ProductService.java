package Service;

import Model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();
    void save(Product product);
    void update(int id, Product product);
    void remove(int id);
    Product findByName(int id);

}
