package com.chinasoft.wangpo.entity;

import java.io.Serializable;

/**
 * @author Makise
 *         date 2017-06-14 16:15
 */
public class Account implements Serializable{
    private Integer acc_id;  //用户id
    private String acc_lname; //用户名
    private String acc_pwd;   //密码
    private String acc_rname; //真实名字
    private String acc_gender;//性别
    private Integer acc_age; //年龄
    private String acc_pro;  //职业
    private String acc_pay;  //薪资
    private String acc_edu;  //学历
    private String acc_idno; //身份证号码
    private String acc_tel;  //用户电话
    private String acc_qq;   //用户QQ
    private String acc_mail; //用户邮箱
    private String acc_hob;  //用户兴趣
    private String acc_ava;  //用户头像
    private String acc_addr; //用户地址
    private String acc_marr; //婚姻状况
    private String acc_page; //用户主页
    private Integer acc_chi; //有几个小孩
    private Integer acc_sta; //用户状态
    private Integer acc_type;
    private Type type; //用户类型（黄钻、蓝钻...）
    //private List<Account> flist; //好友列表

    public Integer getAcc_id() {
        return acc_id;
    }

    public Integer getAcc_type() {
		return acc_type;
	}

	public void setAcc_type(Integer acc_type) {
		this.acc_type = acc_type;
	}

	public void setAcc_id(Integer acc_id) {
        this.acc_id = acc_id;
    }

    public String getAcc_lname() {
        return acc_lname;
    }

    public void setAcc_lname(String acc_lname) {
        this.acc_lname = acc_lname==null?null:acc_lname.trim();
    }

    public String getAcc_pwd() {
        return acc_pwd;
    }

    public void setAcc_pwd(String acc_pwd) {
        this.acc_pwd = acc_pwd==null?null:acc_pwd.trim();
    }

    public String getAcc_rname() {
        return acc_rname;
    }

    public void setAcc_rname(String acc_rname) {
        this.acc_rname = acc_rname==null?null:acc_rname.trim();
    }

    public String getAcc_gender() {
        return acc_gender;
    }

    public void setAcc_gender(String acc_gender) {
        this.acc_gender = acc_gender==null?null:acc_gender.trim();
    }

    public Integer getAcc_age() {
        return acc_age;
    }

    public void setAcc_age(Integer acc_age) {
        this.acc_age = acc_age;
    }

    public String getAcc_pro() {
        return acc_pro;
    }

    public void setAcc_pro(String acc_pro) {
        this.acc_pro = acc_pro==null?null:acc_pro.trim();
    }

    public String getAcc_pay() {
        return acc_pay;
    }

    public void setAcc_pay(String acc_pay) {
        this.acc_pay = acc_pay==null?null:acc_pay.trim();
    }

    public String getAcc_edu() {
        return acc_edu;
    }

    public void setAcc_edu(String acc_edu) {
        this.acc_edu = acc_edu;
    }

    public String getAcc_idno() {
        return acc_idno;
    }

    public void setAcc_idno(String acc_idno) {
        this.acc_idno = acc_idno;
    }

    public String getAcc_tel() {
        return acc_tel;
    }

    public void setAcc_tel(String acc_tel) {
        this.acc_tel = acc_tel;
    }

    public String getAcc_qq() {
        return acc_qq;
    }

    public void setAcc_qq(String acc_qq) {
        this.acc_qq = acc_qq;
    }

    public String getAcc_mail() {
        return acc_mail;
    }

    public void setAcc_mail(String acc_mail) {
        this.acc_mail = acc_mail;
    }

    public String getAcc_hob() {
        return acc_hob;
    }

    public void setAcc_hob(String acc_hob) {
        this.acc_hob = acc_hob;
    }

    public String getAcc_ava() {
        return acc_ava;
    }

    public void setAcc_ava(String acc_ava) {
        this.acc_ava = acc_ava;
    }

    public String getAcc_addr() {
        return acc_addr;
    }

    public void setAcc_addr(String acc_addr) {
        this.acc_addr = acc_addr;
    }

    public String getAcc_marr() {
        return acc_marr;
    }

    public void setAcc_marr(String acc_marr) {
        this.acc_marr = acc_marr;
    }

    public String getAcc_page() {
        return acc_page;
    }

    public void setAcc_page(String acc_page) {
        this.acc_page = acc_page;
    }

    public Integer getAcc_chi() {
        return acc_chi;
    }

    public void setAcc_chi(Integer acc_chi) {
        this.acc_chi = acc_chi;
    }

    public Integer getAcc_sta() {
        return acc_sta;
    }

    public void setAcc_sta(Integer acc_sta) {
        this.acc_sta = acc_sta;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Account{" +
                "acc_id=" + acc_id +
                ", acc_lname='" + acc_lname + '\'' +
                ", acc_pwd='" + acc_pwd + '\'' +
                ", acc_rname='" + acc_rname + '\'' +
                ", acc_gender='" + acc_gender + '\'' +
                ", acc_age=" + acc_age +
                ", acc_pro='" + acc_pro + '\'' +
                ", acc_pay='" + acc_pay + '\'' +
                ", acc_edu='" + acc_edu + '\'' +
                ", acc_idno='" + acc_idno + '\'' +
                ", acc_tel='" + acc_tel + '\'' +
                ", acc_qq='" + acc_qq + '\'' +
                ", acc_mail='" + acc_mail + '\'' +
                ", acc_hob='" + acc_hob + '\'' +
                ", acc_ava='" + acc_ava + '\'' +
                ", acc_addr='" + acc_addr + '\'' +
                ", acc_marr='" + acc_marr + '\'' +
                ", acc_page='" + acc_page + '\'' +
                ", acc_chi=" + acc_chi +
                ", acc_sta=" + acc_sta +
                ", acc_type=" + acc_type +
                ", type=" + type +
                '}';
    }
}
