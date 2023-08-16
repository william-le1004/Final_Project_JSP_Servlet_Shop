package com.Model;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;

/**
 * @author Will
 * @project Final_Project
 * @date 8/12/2023
 */
@AllArgsConstructor
@Getter
@ToString
@Setter
@Data
@NoArgsConstructor
@Entity
@Table(name = "User")
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "User_ID")
    private int userID;
    //    String firstName;
    //    String lastName;
    private UserName name;
    @Column(name = "Account_Name",unique = true, length = 30)
    private String username;
    @Column(name = "Account_Password", length = 35)
    private String password;
    @Column(name = "Gmail",unique = true, length = 50)
    private String email;
    @Column(name = "Phone_Number",unique = true, length = 30)
    private String phoneNumber;
    @Column(name = "Address", length = 50)
    private String address;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "Cart_ID_U",referencedColumnName = "Cart_ID")
    private Cart cart;



    public User(UserName name, String username, String password, String email, String phoneNumber, String address) {
        this.name = name;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
    }
}
