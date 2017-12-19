package com.chinasoft.wangpo.entity;

import java.io.Serializable;

/**
 * @author Makise
 *         date 2017-06-14 16:15
 */
@SuppressWarnings("AlibabaLowerCamelCaseVariableNaming")
public class Account implements Serializable{
    private Integer accId;
    private String accLname;
    private String accPwd;
    private String accRname;
    private String accGender;
    private Integer accAge;
    private String accPro;
    private String accPay;
    private String accEdu;
    private String accIdno;
    private String accTel;
    private String accQq;
    private String accMail;
    private String accHob;
    private String accAva;
    private String accAddr;
    private String accMarr;
    private String accPage;
    private Integer accChi;
    private Integer accSta;
    private Integer accType;
    private Type type;

    public Integer getAccId() {
        return accId;
    }

    public void setAccId(Integer accId) {
        this.accId = accId;
    }

    public String getAccLname() {
        return accLname;
    }

    public void setAccLname(String accLname) {
        this.accLname = accLname;
    }

    public String getAccPwd() {
        return accPwd;
    }

    public void setAccPwd(String accPwd) {
        this.accPwd = accPwd;
    }

    public String getAccRname() {
        return accRname;
    }

    public void setAccRname(String accRname) {
        this.accRname = accRname;
    }

    public String getAccGender() {
        return accGender;
    }

    public void setAccGender(String accGender) {
        this.accGender = accGender;
    }

    public Integer getAccAge() {
        return accAge;
    }

    public void setAccAge(Integer accAge) {
        this.accAge = accAge;
    }

    public String getAccPro() {
        return accPro;
    }

    public void setAccPro(String accPro) {
        this.accPro = accPro;
    }

    public String getAccPay() {
        return accPay;
    }

    public void setAccPay(String accPay) {
        this.accPay = accPay;
    }

    public String getAccEdu() {
        return accEdu;
    }

    public void setAccEdu(String accEdu) {
        this.accEdu = accEdu;
    }

    public String getAccIdno() {
        return accIdno;
    }

    public void setAccIdno(String accIdno) {
        this.accIdno = accIdno;
    }

    public String getAccTel() {
        return accTel;
    }

    public void setAccTel(String accTel) {
        this.accTel = accTel;
    }

    public String getAccQq() {
        return accQq;
    }

    public void setAccQq(String accQq) {
        this.accQq = accQq;
    }

    public String getAccMail() {
        return accMail;
    }

    public void setAccMail(String accMail) {
        this.accMail = accMail;
    }

    public String getAccHob() {
        return accHob;
    }

    public void setAccHob(String accHob) {
        this.accHob = accHob;
    }

    public String getAccAva() {
        return accAva;
    }

    public void setAccAva(String accAva) {
        this.accAva = accAva;
    }

    public String getAccAddr() {
        return accAddr;
    }

    public void setAccAddr(String accAddr) {
        this.accAddr = accAddr;
    }

    public String getAccMarr() {
        return accMarr;
    }

    public void setAccMarr(String accMarr) {
        this.accMarr = accMarr;
    }

    public String getAccPage() {
        return accPage;
    }

    public void setAccPage(String accPage) {
        this.accPage = accPage;
    }

    public Integer getAccChi() {
        return accChi;
    }

    public void setAccChi(Integer accChi) {
        this.accChi = accChi;
    }

    public Integer getAccSta() {
        return accSta;
    }

    public void setAccSta(Integer accSta) {
        this.accSta = accSta;
    }

    public Integer getAccType() {
        return accType;
    }

    public void setAccType(Integer accType) {
        this.accType = accType;
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
                "accId=" + accId +
                ", accLname='" + accLname + '\'' +
                ", accPwd='" + accPwd + '\'' +
                ", accRname='" + accRname + '\'' +
                ", accGender='" + accGender + '\'' +
                ", accAge=" + accAge +
                ", accPro='" + accPro + '\'' +
                ", accPay='" + accPay + '\'' +
                ", accEdu='" + accEdu + '\'' +
                ", accIdno='" + accIdno + '\'' +
                ", accTel='" + accTel + '\'' +
                ", accQq='" + accQq + '\'' +
                ", accMail='" + accMail + '\'' +
                ", accHob='" + accHob + '\'' +
                ", accAva='" + accAva + '\'' +
                ", accAddr='" + accAddr + '\'' +
                ", accMarr='" + accMarr + '\'' +
                ", accPage='" + accPage + '\'' +
                ", accChi=" + accChi +
                ", accSta=" + accSta +
                ", accType=" + accType +
                ", type=" + type +
                '}';
    }
}
