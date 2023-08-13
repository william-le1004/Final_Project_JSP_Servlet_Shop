package com.Model;

import com.Data.CategoryDATA;
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
@Table(name = "CATEGORY")
public class Category {
      @Id
      @GeneratedValue
      @Column(name = "Category_ID")
      private int categoryID;
      @Column(name = "Category_Name")
      private String categoryName;
      @OneToOne(cascade = CascadeType.ALL)
      @JoinColumn(name = "Product_ID_C",nullable = true,referencedColumnName = "Product_ID")
      private Product product;

}
