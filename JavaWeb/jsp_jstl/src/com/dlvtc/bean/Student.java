package com.dlvtc.bean;

public class Student {

    private String number;
    private String name;
    private String sex;

    public Student() {

    }

    public Student(String number, String name, String sex) {
        this.number = number;
        this.name = name;
        this.sex = sex;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }


}