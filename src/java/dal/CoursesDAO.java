/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Categories;
import model.Courses;

/**
 *
 * @author nhatm
 */
public class CoursesDAO extends DBContext{
    
    //Khai bao ket noi voi DB
    Statement stm; //Thuc hien cac cau lenh sql
    ResultSet rs; //Luu tru va xu ly du lieu
    PreparedStatement pstm; //Thuc hien cau lenh sql
    
    public ArrayList<Courses> getListCoursebyId(String id){
        String strSQL = "select Learn_Detail.CourseID, Courses.CourseName, Learn_Detail.CategoryID\n"
                + "from Learn_Detail\n"
                + "inner join Courses on Learn_Detail.CourseID = Courses.CourseID\n"
                + "where Learn_Detail.StudentID = '"+id+"'";
        ArrayList<Courses> course_data = new ArrayList<>();
        try {
            pstm = connection.prepareStatement(strSQL);   
            rs=pstm.executeQuery();
            while (rs.next()) {                
                String courseID = rs.getString(1);
                String courseName = rs.getString(2);
                String cateID = rs.getString(3);
                Courses c = new Courses(courseID, courseName, cateID);
                course_data.add(c);
            }
            
        } catch (SQLException e) {
            System.out.println("getListCoursebyId()" + e.getMessage());
        }
        return course_data;
    }
    
    public ArrayList<Categories> getListCate(){
        String strSQL = "select *\n"
                + "from Categories";
        ArrayList<Categories> cate_data = new ArrayList<>();
        try {
            pstm = connection.prepareStatement(strSQL);
            rs=pstm.executeQuery();
            while(rs.next()){
                String cateID = rs.getString(1);
                String cateName = rs.getString(2);
                Categories cate = new Categories(cateID, cateName);
                cate_data.add(cate);
            }
        } catch (SQLException e) {
            System.out.println("dal.CoursesDAO.getListCate()" + e.getMessage());
        }
        return cate_data;
    }
    
    
    public ArrayList<Courses> getListCoursebyCateID(String cateid){
        String strSQL = "select *\n"
                + "from Courses\n"
                + "where CategoryID = '"+cateid+"'";
        ArrayList<Courses> course_by_cateid = new ArrayList<>();
        try {
            pstm = connection.prepareStatement(strSQL);
            rs = pstm.executeQuery();
            while (rs.next()) {                
                String courseID = rs.getString(1);
                String courseName = rs.getString(2);
                String cateID = rs.getString(3);
                Courses c = new Courses(courseID, courseName, cateID);
                course_by_cateid.add(c);
            }
        } catch (SQLException e) {
            System.out.println("dal.CoursesDAO.getListCoursebyCateID()" + e.getMessage());
        }
        return course_by_cateid;
    }
}
