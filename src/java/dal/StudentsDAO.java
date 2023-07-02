/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author nhatm
 */
public class StudentsDAO extends DBContext{
    
    //Khai bao ket noi voi DB
    Statement stm; //Thuc hien cac cau lenh sql
    ResultSet rs; //Luu tru va xu ly du lieu
    PreparedStatement pstm; //Thuc hien cau lenh sql
    
    public boolean checkLogin(String account, String password){
        String strSQL = "select * from Students where Account='"+account+"' and Password='"+password+"'";
        try {
            pstm = connection.prepareStatement(strSQL);
            rs = pstm.executeQuery();
            while (rs.next()) {
                System.out.println("check login");
                return true;
            }
        } catch (SQLException e) {
            System.out.println("checkLogin: " + e.getMessage());
        }
        return false;
    }
    
    
    public String getIDbyAccount(String account){
        String strSQL = "select StudentID from Students where Account = '"+account+"'";
        try{
            pstm = connection.prepareStatement(strSQL);
            rs = pstm.executeQuery();
            while(rs.next()){
                System.out.println("get ID by Account");
                return rs.getString("StudentID");
            }
        } catch (SQLException e){
            System.out.println("dal.StudentsDAO.getIDbyAccount()" + e.getMessage());
        }
        return "";
    }
}
