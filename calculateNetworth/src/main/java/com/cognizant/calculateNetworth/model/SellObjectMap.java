package com.cognizant.calculateNetworth.model;

import java.util.Map;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class SellObjectMap {

	int pid;

	Map<String,Integer> stockIdList;

	Map<String,Integer> mfAssetList;

	public int getPid() {
		return pid;
	}
}
