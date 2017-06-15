package com.chinasoft.wangpo.entity;

/**
 * @author Makise
 *         date 2017-06-15 15:27
 */
public class Machlog {
    private Integer l_id; //记录ID
    private Integer m_acc; //用户ID
    private Integer f_acc; //对象ID
    private String l_date; //记录日期
    private String l_relation; //目前关系

    public Integer getL_id() {
        return l_id;
    }

    public void setL_id(Integer l_id) {
        this.l_id = l_id;
    }

    public Integer getM_acc() {
        return m_acc;
    }

    public void setM_acc(Integer m_acc) {
        this.m_acc = m_acc;
    }

    public Integer getF_acc() {
        return f_acc;
    }

    public void setF_acc(Integer f_acc) {
        this.f_acc = f_acc;
    }

    public String getL_date() {
        return l_date;
    }

    public void setL_date(String l_date) {
        this.l_date = l_date;
    }

    public String getL_relation() {
        return l_relation;
    }

    public void setL_relation(String l_relation) {
        this.l_relation = l_relation;
    }

    @Override
    public String toString() {
        return "Machlog{" +
                "l_id=" + l_id +
                ", m_acc=" + m_acc +
                ", f_acc=" + f_acc +
                ", l_date='" + l_date + '\'' +
                ", l_relation='" + l_relation + '\'' +
                '}';
    }
}
