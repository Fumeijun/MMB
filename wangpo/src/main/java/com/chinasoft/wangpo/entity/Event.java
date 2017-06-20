package com.chinasoft.wangpo.entity;

import java.util.List;

/**
 * @author Makise
 *         date 2017-06-15 14:47
 */
public class Event {
    private Integer e_id; //活动ID
    private Account e_acc; //发起账号id
    private String e_atime; //申请时间
    private String e_sta; //活动状态
    private String e_stime; //活动开始时间
    private String e_type; //活动类型
    private Integer e_maxqua; //活动最大人数
    private String e_model; // 活动模式
    private List<Account> eact; //参加人员名单

    public Integer getE_id() {
        return e_id;
    }

    public void setE_id(Integer e_id) {
        this.e_id = e_id;
    }

    public Account getE_acc() {
        return e_acc;
    }

    public void setE_acc(Account e_acc) {
        this.e_acc = e_acc;
    }

    public String getE_atime() {
        return e_atime;
    }

    public void setE_atime(String e_atime) {
        this.e_atime = e_atime;
    }

    public String getE_sta() {
        return e_sta;
    }

    public void setE_sta(String e_sta) {
        this.e_sta = e_sta;
    }

    public String getE_stime() {
        return e_stime;
    }

    public void setE_stime(String e_stime) {
        this.e_stime = e_stime;
    }

    public String getE_type() {
        return e_type;
    }

    public void setE_type(String e_type) {
        this.e_type = e_type;
    }

    public Integer getE_maxqua() {
        return e_maxqua;
    }

    public void setE_maxqua(Integer e_maxqua) {
        this.e_maxqua = e_maxqua;
    }

    public String getE_model() {
        return e_model;
    }

    public void setE_model(String e_model) {
        this.e_model = e_model;
    }

    public List<Account> getEact() {
        return eact;
    }

    public void setEact(List<Account> eact) {
        this.eact = eact;
    }


    @Override
    public String toString() {
        return "Event{" +
                "e_id=" + e_id +
                ", e_acc=" + e_acc +
                ", e_atime='" + e_atime + '\'' +
                ", e_sta='" + e_sta + '\'' +
                ", e_stime='" + e_stime + '\'' +
                ", e_type='" + e_type + '\'' +
                ", e_maxqua=" + e_maxqua +
                ", e_model='" + e_model + '\'' +
                ", eact=" + eact +
                '}';
    }
}
