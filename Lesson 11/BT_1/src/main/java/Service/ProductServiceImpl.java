package Service;

import Model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "wave", 25000000, "110cc", "Honda"));
        products.put(2, new Product(2, "vision", 30000000, "125cc", "Honda"));
        products.put(3, new Product(3, "jupiter", 28000000, "125cc", "Yamaha"));
        products.put(4, new Product(4, "exciter", 45000000, "150cc", "Yamaha"));
        products.put(5, new Product(5, "winner", 60000000, "175cc", "Honda"));
    }


    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public Product findByName(String productName) {
        for (Integer i : products.keySet()) {
            if (products.get(i).getProductName().equalsIgnoreCase(productName)) {
                return products.get(i);
            }
        }
        return null;
    }


}
