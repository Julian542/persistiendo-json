/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;

/**
 *
 * @author walte_6095blj
 */
@Entity
@IdClass(value = PaisPk.class)
public class Pais implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    private int codigoPais;
    
    @Id
    @Column(name = "nombrePais", nullable = false)
    private String nombrePais;
  
    @Column(name = "capitalPais", nullable = false)
    private String capitalPais;
    
    @Column(name = "region", nullable = false)
    private String region;
    
    @Column(name = "poblacion", nullable = false)
    private long poblacion;
    
    @Column(name = "latitud", nullable = false)
    private float latitud;
    
    @Column(name = "longitud", nullable = false)
    private float longitud;

    public Pais() {
    }

    public Pais(int codigoPais, String nombrePais , String capitalPais, String region, long poblacion, float latitud, float longitud) {
        this.codigoPais = codigoPais;
        this.nombrePais = nombrePais;
        this.capitalPais = capitalPais;
        this.region = region;
        this.poblacion = poblacion;
        this.latitud = latitud;
        this.longitud = longitud;
    }

    public int getCodigoPais() {
        return codigoPais;
    }

    public void setCodigoPais(int codigoPais) {
        this.codigoPais = codigoPais;
    }

    public String getNombrePais() {
        return nombrePais;
    }

    public void setNombrePais(String nombrePais) {
        this.nombrePais = nombrePais;
    }

    
    public String getCapitalPais() {
        return capitalPais;
    }

    public void setCapitalPais(String capitalPais) {
        this.capitalPais = capitalPais;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public long getPoblacion() {
        return poblacion;
    }

    public void setPoblacion(long poblacion) {
        this.poblacion = poblacion;
    }

    public float getLatitud() {
        return latitud;
    }

    public void setLatitud(float latitud) {
        this.latitud = latitud;
    }

    public float getLongitud() {
        return longitud;
    }

    public void setLongitud(float longitud) {
        this.longitud = longitud;
    }
    
    
    
}
