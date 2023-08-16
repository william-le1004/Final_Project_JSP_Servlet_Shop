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
@Table(name = "CART")
public class Cart implements Serializable {

      @Id
      @GeneratedValue(strategy = GenerationType.IDENTITY)
      @Column(name = "Cart_ID")
      private int cartID;

      @OneToMany(mappedBy = "cart", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
      private Set<Product> items;

      @OneToOne(mappedBy = "cart")
      private User user;
}
