package com.dlvtc.bean;

public class Circle {
	private int number; // 圆的编号
	private double x; // 圆心x值
	private double y; // 圆心y值
	private double radius; // 半径

	public Circle() {
	} // 公共无参构造方法，这里使用的是默认构造方法

	public int getNumber() {
		return number;
	} // 成员number的get方法

	public void setNumber(int number) {
		this.number = number;
	} // 成员number的set方法

	public double getX() {
		return x;
	}

	public void setX(double x) {
		this.x = x;
	}

	public double getY() {
		return y;
	}

	public void setY(double y) {
		this.y = y;
	}

	public double getRadius() {
		return radius;
	}

	public void setRadius(double radius) {
		this.radius = radius;
	}


	public double circleArea() {
		return Math.PI * radius * radius;
	} // 计算圆面积的方法

	public double circleLength() {
		return 2 * Math.PI * radius;
	} // 计算圆周长的方法
}