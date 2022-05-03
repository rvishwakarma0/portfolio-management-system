package com.cognizant.portfoliomanagement.WebPortal.Model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/** Model class for the business details */
@Component
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserData {

	/**
	 * Id for user
	 */

	private String userid;
	/**
	 * Password for user
	 */
	private String upassword;
	/**
	 * Name for user
	 */
	private String uname;
	/**
	 * Generated authentication token for the user
	 */
	private String authToken;

	}
