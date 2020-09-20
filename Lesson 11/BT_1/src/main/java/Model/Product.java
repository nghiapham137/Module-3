package Model;

public class Product {
    private int id;
    private String productName;
    private float price;
    private String description;
    private String maker;

    public Product(int id, String productName, float price, String description, String maker) {
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.description = description;
        this.maker = maker;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }
}
