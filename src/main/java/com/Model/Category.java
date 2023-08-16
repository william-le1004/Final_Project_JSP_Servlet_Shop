package com.Model;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

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
public class Category implements Serializable {
      @Id
      @GeneratedValue
      @Column(name = "Category_ID")
      private int categoryID;
      @Column(name = "Category_Name")
      private String categoryName;

//      @OneToOne(cascade = CascadeType.ALL)
//      @JoinColumn(name = "Product_ID", referencedColumnName = "Product_ID")
      @OneToOne(mappedBy = "category")
      private Product products;

}
