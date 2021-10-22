package com.bosque.DTO;

public class VentasPorCliente {
private int aCedulaCliente;
private String bNombreCliente;
private double cTotalCliente;
private double cTotal;
public double getcTotalCliente() {
	return cTotalCliente;
}
public void setcTotalCliente(double cTotalCliente) {
	this.cTotalCliente = cTotalCliente;
}
public int getaCedulaCliente() {
	return aCedulaCliente;
}
public void setaCedulaCliente(int aCedulaCliente) {
	this.aCedulaCliente = aCedulaCliente;
}
public String getbNombreCliente() {
	return bNombreCliente;
}
public void setbNombreCliente(String bNombreCliente) {
	this.bNombreCliente = bNombreCliente;
}
public double getcTotal() {
	return cTotal;
}
public void setcTotal(double cTotal) {
	this.cTotal = cTotal;
}
}
