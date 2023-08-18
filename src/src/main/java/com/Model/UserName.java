package com.Model;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Embeddable;

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
@Embeddable
public class UserName {

      @Column(name = "FIRST_NAME", length = 20)
      private String firstName;
      @Column(name = "LAST_NAME", length = 20)
      private String lastName;
}
