package com.Model;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;

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
@Table(name = "ADMIN")
public class Admin implements Serializable {

      @Id
      @GeneratedValue(strategy = GenerationType.IDENTITY)
      private int adminID;
      @Column(name = "Admin_Account", unique = true, length = 10)
      private String addminUsername;
      @Column(name = "Admin_Password", length = 10)
      private String addminPassword;

      public Admin(String addminUsername, String addminPassword) {
            this.addminUsername = addminUsername;
            this.addminPassword = addminPassword;
      }
}
