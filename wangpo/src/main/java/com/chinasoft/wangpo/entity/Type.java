package com.chinasoft.wangpo.entity;

/**
 * @author Makise
 *         date 2017-06-15 15:31
 */
public class Type {
    private Integer t_id; //类型id
    private String t_type; //会员类型
    private Double t_money; //金额

    public Integer getT_id() {
        return t_id;
    }

    public void setT_id(Integer t_id) {
        this.t_id = t_id;
    }

    public String getT_type() {
        return t_type;
    }

    public void setT_type(String t_type) {
        this.t_type = t_type;
    }

    public double getT_money() {
        return t_money;
    }

    public void setT_money(Double t_money) {
        this.t_money = t_money;
    }

    @Override
    public String toString() {
        return "Type{" +
                "t_id=" + t_id +
                ", t_type='" + t_type + '\'' +
                ", t_money=" + t_money +
                '}';
    }
}
