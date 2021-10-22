package com.bosque.tienda;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bosque.DAO.Archivo;
import com.bosque.DAO.ClienteDAO;
import com.bosque.DAO.ProductosDAO;
import com.bosque.DTO.Clientes;
import com.bosque.DTO.Productos;

import io.swagger.models.Model;
@RestController
@RequestMapping("/Productos") // http://localhost:8080/Productos/Lista
public class ProductoController {
	ProductosDAO productoDAO = new ProductosDAO();
	@RequestMapping("/Lista")
	
	public ArrayList<Productos> listaProductos(){
		return productoDAO.listProduct();

	}
	@PostMapping("/cargar")
	public ModelAndView uploadFile( @RequestParam("file")MultipartFile file, RedirectAttributes redirectAttributes )  {
		return new ModelAndView ("status","message", "archivo cargado exitosamente");
	}
	
	@GetMapping(value="{codigo}")
	public Productos codigoProducto(@PathVariable("codigo")int codigo) {
		
		return productoDAO.readProductos(codigo);
	}
}
