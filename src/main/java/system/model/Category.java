package system.model;

import javax.persistence.*;

@Entity
@Table(name = "CATEGORIES")
public class Category {

    @Id
    @GeneratedValue
    private int id;

    @Column(name = "CATEGORY_NAME")
    private String name;

    public Category(){}

    public Category(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
