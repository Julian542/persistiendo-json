/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author walte_6095blj
 */
@Embeddable
public class PaisPk implements Serializable{
    
  private String nombrePais;
  private int codigoPais;

    public String getNombrePais() {
        return nombrePais;
    }

    public void setNombrePais(String nombrePais) {
        this.nombrePais = nombrePais;
    }

    public int getCodigoPais() {
        return codigoPais;
    }

    public void setCodigoPais(int codigoPais) {
        this.codigoPais = codigoPais;
    }

    public PaisPk(String nombrePais, int codigoPais) {
        this.nombrePais = nombrePais;
        this.codigoPais = codigoPais;
    }

    
  
  
  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + codigoPais;
    result = prime * result + ((nombrePais == null) ? 0 : nombrePais.hashCode());
    return result;
  }
  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    PaisPk other = (PaisPk) obj;
    if (codigoPais != other.codigoPais)
      return false;
    if (nombrePais == null) {
      if (other.nombrePais != null)
        return false;
    } else if (!nombrePais.equals(other.nombrePais))
      return false;
    return true;
  }
}
