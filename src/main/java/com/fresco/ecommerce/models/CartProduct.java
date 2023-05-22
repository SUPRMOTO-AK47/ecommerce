package com.fresco.ecommerce.models;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class CartProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer cpId;

    @ManyToOne
    @JoinColumn(name = "cart_id")
    private Cart cart;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    private Integer quantity;
}
