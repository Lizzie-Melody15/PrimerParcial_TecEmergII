package com.emergentes.modelo;

public class Vacunas {
   private int id;
   private String nombre;
   private int peso;
   private int talla;
   private String vacuna;
   
   public Vacunas(){
       id = 0;
       nombre = "";
       peso = 0;
       talla = 0;
       vacuna = "";
   }
    public Vacunas(int id, String nombre, int peso, int talla, String vacuna){
       this.id = id;
       this.nombre = nombre;
       this.peso = peso;
       this.talla = talla;
       this.vacuna = vacuna;
   }
    public void setId(int id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public void setTalla(int talla) {
        this.talla = talla;
    }

    public void setVacuna(String vacuna) {
        this.vacuna = vacuna;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public int getPeso() {
        return peso;
    }

    public int getTalla() {
        return talla;
    }

    public String getVacuna() {
        return vacuna;
    }
   
}