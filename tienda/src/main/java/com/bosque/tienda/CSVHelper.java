package com.bosque.tienda;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import com.bosque.DTO.Productos;

public class CSVHelper {
	

	public static List<String[]> csvTutorials(InputStream inputStream) {
		try 
			
			(BufferedReader filereader= new BufferedReader(new InputStreamReader(inputStream,"UTF-8") ))
			//CSVParser csvparser = new CSVParser(filereader,CSVFormat.DEFAULT.withFirstRecordAsHeader(),) 
				{		
		
		}
	catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return null;
	}
}

