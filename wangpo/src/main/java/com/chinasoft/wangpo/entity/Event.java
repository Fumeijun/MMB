package com.chinasoft.wangpo.entity;

import java.util.List;

/**
 * @author Makise
 *         date 2017-06-15 14:47
 */
public class Event {
    private Integer eId;
    private Account eAcc;
    private String eAtime;
    private String eSta;
    private String eStime ="CURDATE()";
    private String eType;
    private Integer eMaxqua;
    private String eModel;
    private List<Account> eact;
    private String eRemark; //备注

    public Integer geteId() {
        return eId;
    }

    public void seteId(Integer eId) {
        this.eId = eId;
    }

    public Account geteAcc() {
        return eAcc;
    }

    public void seteAcc(Account eAcc) {
        this.eAcc = eAcc;
    }

    public String geteAtime() {
        return eAtime;
    }

    public void seteAtime(String eAtime) {
        this.eAtime = eAtime;
    }

    public String geteSta() {
        return eSta;
    }

    public void seteSta(String eSta) {
        this.eSta = eSta;
    }

    public String geteStime() {
        return eStime;
    }

    public void seteStime(String eStime) {
        this.eStime = eStime;
    }

    public String geteType() {
        return eType;
    }

    public void seteType(String eType) {
        this.eType = eType;
    }

    public Integer geteMaxqua() {
        return eMaxqua;
    }

    public void seteMaxqua(Integer eMaxqua) {
        this.eMaxqua = eMaxqua;
    }

    public String geteModel() {
        return eModel;
    }

    public void seteModel(String eModel) {
        this.eModel = eModel;
    }

    public List<Account> getEact() {
        return eact;
    }

    public void setEact(List<Account> eact) {
        this.eact = eact;
    }

    public String geteRemark() {
        return eRemark;
    }

    public void seteRemark(String eRemark) {
        this.eRemark = eRemark;
    }

    @Override
    public String toString() {
        return "Event{" +
                "e_id=" + eId +
                ", e_acc=" + eAcc +
                ", e_atime='" + eAtime + '\'' +
                ", e_sta='" + eSta + '\'' +
                ", e_stime='" + eStime  + '\'' +
                ", e_type='" + eType + '\'' +
                ", e_maxqua=" + eMaxqua +
                ", e_model='" + eModel + '\'' +
                ", eact=" + eact +
                ", e_remark='" + eRemark + '\'' +
                '}';
    }
}
