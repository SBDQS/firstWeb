/**
 * Copyright (C), 2015-2019
 * FileName: Student
 * Author:   niko
 * Date:     2019/5/9 19:41
 * Description: 学生类
 * History:
 * <author>          <time>          <version>
 * 逝不等琴生          19:41           1.0
 */
package beans;

public class Student {
    private String sno,sname,sex;
    public Student(){}
    public Student(String sno,String sname,String sex){
        this.sno = sno;
        this.sname = sname;
        this.sex = sex;
    }
    public String getSno(){return sno;}
    public void setSno(String sno){this.sno = sno;}
    public String getSname(){	return sname;}
    public void setSname(String sname){this.sname = sname;}
    public String getSex(){return sex;}
    public void setSex(String sex){this.sex = sex;}

}