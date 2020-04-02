package tp2labo4;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import modelo.Pais;
import org.json.JSONArray;
import org.json.JSONObject;

public class Tp2labo4 {

    //Trabajo Practico Numero 2 de Laboratorio IV hecho por Walter Julian Gutierrez Caligaris Legajo:45997
    public static void main(String[] args) {
        try{
            persistiendoBD();
        }catch(Exception e){
            System.out.println("Oops! An error has ocurrer while the program was running. Check the code or try again!"); 
        }
    }

    //Metodo para hacer peticion WEB y leer el JSON
    public static String peticionHttp(String urljson) throws Exception {
        StringBuilder resultado = new StringBuilder();

        URL url = new URL(urljson);

        HttpURLConnection conexion = (HttpURLConnection) url.openConnection();
        conexion.setRequestMethod("GET");

        BufferedReader rd = new BufferedReader(new InputStreamReader(conexion.getInputStream()));
        String linea;

        while ((linea = rd.readLine()) != null) {
            resultado.append(linea);
        }

        rd.close();
        return resultado.toString();
    }
    
    //Metodo para utilizar JPA y persistir la Base de Datos mientras leemos el JSON
    public static void persistiendoBD(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("unidadpersistencia");
        int contador = 0;
        String resultado = "";
        for (int codigo = 1; codigo <= 300; codigo++) {
            try {

                String url = "https://restcountries.eu/rest/v2/callingcode/" + codigo;
                resultado = peticionHttp(url);
                JSONArray arreglo = new JSONArray(resultado);
                EntityManager em = emf.createEntityManager();
                for (int i = 0; i < arreglo.length(); i++) {
                    JSONObject datosjson = arreglo.getJSONObject(i);
                    System.out.println("Codigo de " + datosjson.getString("name") + " detectado.");
                    
                    em.getTransaction().begin();
                    Pais pais = new Pais(Integer.parseInt(datosjson.getJSONArray("callingCodes").getString(0))
                            , datosjson.getString("name")
                            , datosjson.getString("capital")
                            , datosjson.getString("region")
                            , datosjson.getLong("population")
                            , datosjson.getJSONArray("latlng").getFloat(0)
                            , datosjson.getJSONArray("latlng").getFloat(1));
                    em.merge(pais);
                    em.flush();
                    em.getTransaction().commit();
                    
                    System.out.println("Codigo " + codigo + " persistido.");
                    contador++;
                }
                em.close();
            } catch (Exception e) {
                System.out.println("Codigo " + codigo + " NO persistido.");
            }

        }
        System.out.println("Paises persistidos: " + contador);
        emf.close();
    }
}
