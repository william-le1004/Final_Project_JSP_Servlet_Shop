package com.Model;

import lombok.*;

import javax.persistence.*;

/**
 * @author Will
 * @project Final_Project - Copy
 * @date 8/20/2023
 */
@AllArgsConstructor
@Getter
@ToString
@Setter
@Data
@NoArgsConstructor
@Entity
public class Item {

      @Id
      @GeneratedValue(strategy = GenerationType.IDENTITY)
      private int id;

      private int quantity;

      @OneToOne(cascade = CascadeType.ALL)
      @JoinColumn(name = "FK_Category", referencedColumnName = "Product_ID")
      private Product product;

      private Double price;

      @ManyToOne
      @JoinColumn(name = "FK_Cart", nullable = true, referencedColumnName = "Cart_ID")
      private Cart cart;

      public Item(int quantity, Product product, Double price) {
            this.quantity = quantity;
            this.product = product;
            this.price = price;
      }
}
