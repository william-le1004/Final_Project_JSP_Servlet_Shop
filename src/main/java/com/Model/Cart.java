package com.Model;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

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

      @Column(name = "Quantity")
      private int quantity;

      @Column(name = "Date")
      private Timestamp date_create;

      @OneToMany(mappedBy = "cart", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
      private List<Item> items;

      @OneToOne(mappedBy = "cart")
      private User user;
}
