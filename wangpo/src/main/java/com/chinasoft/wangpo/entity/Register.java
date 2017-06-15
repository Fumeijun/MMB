package com.chinasoft.wangpo.entity;

/**
 * @author Makise
 *         date 2017-06-15 14:27
 */
public class Register {
    private Integer rid;
    private String rname;
    private String rpwd;
    private Integer rage;
    private String ridno;
    private String rtel;
    private Integer rsta;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getRpwd() {
        return rpwd;
    }

    public void setRpwd(String rpwd) {
        this.rpwd = rpwd;
    }

    public Integer getRage() {
        return rage;
    }

    public void setRage(Integer rage) {
        this.rage = rage;
    }

    public String getRidno() {
        return ridno;
    }

    public void setRidno(String ridno) {
        this.ridno = ridno;
    }

    public String getRtel() {
        return rtel;
    }

    public void setRtel(String rtel) {
        this.rtel = rtel;
    }

    public Integer getRsta() {
        return rsta;
    }

    public void setRsta(Integer rsta) {
        this.rsta = rsta;
    }

    @Override
    public String toString() {
        return "Register{" +
                "rid=" + rid +
                ", rname='" + rname + '\'' +
                ", rpwd='" + rpwd + '\'' +
                ", rage=" + rage +
                ", ridno='" + ridno + '\'' +
                ", rtel='" + rtel + '\'' +
                ", rsta=" + rsta +
                '}';
    }
}
