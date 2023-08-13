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
      @ManyToOne
      @JoinColumn(name = "Cart_ID", nullable = true, referencedColumnName = "Cart_ID")
      private Cart cart;

      //      @OneToOne(mappedBy = "product")
      @ManyToOne
      @JoinColumn(name = "Category_ID", nullable = true, referencedColumnName = "Category_ID",)
      private Category category;
}
