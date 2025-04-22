package test;
import java.io.*;
@SuppressWarnings("serial")
public class StudentBean implements Serializable
{
   private String rollNo,name,course;
   private MarksBean mk = new MarksBean();
   public StudentBean() {}
public String getRollNo() {
	return rollNo;
}
public void setRollNo(String rollNo) {
	this.rollNo = rollNo;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getCourse() {
	return course;
}
public void setCourse(String course) {
	this.course = course;
}
public MarksBean getMk() {
	return mk;
}
public void setMk(MarksBean mk) {
	this.mk = mk;
}
   
}
