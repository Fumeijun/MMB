package com.chinasoft.wangpo.entity;

/**
 * @author Makise
 *         date 2017-06-15 14:27
 */
public class Register {
    private Integer rid; //注册id 不由用户填写
    private String rname; //注册名
    private String rpwd; //注册密码
    private Integer rage; // 注册年龄
    private String ridno; // 身份证号码
    private String rtel; //注册电话号码
    private Integer rsta; // 状态

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
