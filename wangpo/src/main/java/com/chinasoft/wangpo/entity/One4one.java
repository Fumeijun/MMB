package com.chinasoft.wangpo.entity;

/**
 * @author Makise
 *         date 2017-06-15 15:32
 */
public class One4one {
    private Integer o_id; //1对1 ID
    private Integer o_acc; //申请服务账号id
    private String o_perator; //处理人
    private String o_sta; //处理情况
    private String o_cost; //缴费状态
    private String o_remark; //备注
    private Double o_money; //金额

    public Integer getO_id() {
        return o_id;
    }

    public void setO_id(Integer o_id) {
        this.o_id = o_id;
    }

    public Integer getO_acc() {
        return o_acc;
    }

    public void setO_acc(Integer o_acc) {
        this.o_acc = o_acc;
    }

    public String getO_perator() {
        return o_perator;
    }

    public void setO_perator(String o_perator) {
        this.o_perator = o_perator;
    }

    public String getO_sta() {
        return o_sta;
    }

    public void setO_sta(String o_sta) {
        this.o_sta = o_sta;
    }

    public String getO_cost() {
        return o_cost;
    }

    public void setO_cost(String o_cost) {
        this.o_cost = o_cost;
    }

    public String getO_remark() {
        return o_remark;
    }

    public void setO_remark(String o_remark) {
        this.o_remark = o_remark;
    }

    public Double getO_money() {
        return o_money;
    }

    public void setO_money(Double o_money) {
        this.o_money = o_money;
    }

    @Override
    public String toString() {
        return "One4one{" +
                "o_id=" + o_id +
                ", o_acc=" + o_acc +
                ", o_perator='" + o_perator + '\'' +
                ", o_sta='" + o_sta + '\'' +
                ", o_cost='" + o_cost + '\'' +
                ", o_remark='" + o_remark + '\'' +
                ", o_money=" + o_money +
                '}';
    }
}
