package com.Model;

import lombok.*;

import javax.persistence.*;

/**
 * @author Will
 * @project Final_Project
 * @date 8/13/2023
 */
@AllArgsConstructor
@Getter
@ToString
@Setter
@Data
@NoArgsConstructor
@Entity
@Table(name = "PRODUCT")
public class Product {

      @Id
      @GeneratedValue(strategy = GenerationType.IDENTITY)
      @Column(name = "Product_ID", length = 30)
      private int productID;
      @Column(name = "Product_Name")
      private String productName;
      @Column(name = "Product_Sorce_Img")
      private String productImg;
      @Column(name = "Product_Price")
      private Double productPrice;
      @Column(name = "Product_Quantity")
      private int quantity;
      @ManyToOne
      @JoinColumn(name = "Cart_ID_P", nullable = true, referencedColumnName = "Cart_ID")
      private Cart cart;

      //      @OneToOne(mappedBy = "products")
      @OneToOne(cascade = CascadeType.ALL)
      @JoinColumn(name = "Category_ID", referencedColumnName = "Category_ID")
      private Category category;
}
