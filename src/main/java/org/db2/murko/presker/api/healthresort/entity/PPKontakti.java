package org.db2.murko.presker.api.healthresort.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pp_kontakti")
public class PPKontakti {

    @Id
    private int id_pp_kontakti;
    private String telefon;
    private String enaslov;
    private int id_osebe;
    private int id_poslovni_partnerji;

    public int getId_pp_kontakti() {
        return id_pp_kontakti;
    }

    public void setId_pp_kontakti(int id_pp_kontakti) {
        this.id_pp_kontakti = id_pp_kontakti;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getEnaslov() {
        return enaslov;
    }

    public void setEnaslov(String enaslov) {
        this.enaslov = enaslov;
    }

    public int getId_osebe() {
        return id_osebe;
    }

    public void setId_osebe(int id_osebe) {
        this.id_osebe = id_osebe;
    }

    public int getId_poslovni_partnerji() {
        return id_poslovni_partnerji;
    }

    public void setId_poslovni_partnerji(int id_poslovni_partnerji) {
        this.id_poslovni_partnerji = id_poslovni_partnerji;
    }

    @Override
    public String toString() {
        return "PPKontakti{" +
                "id_pp_kontakti=" + id_pp_kontakti +
                ", telefon='" + telefon + '\'' +
                ", enaslov='" + enaslov + '\'' +
                ", id_osebe=" + id_osebe +
                ", id_poslovni_partnerji=" + id_poslovni_partnerji +
                '}';
    }
}