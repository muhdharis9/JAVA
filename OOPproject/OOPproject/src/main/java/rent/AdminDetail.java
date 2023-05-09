/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rent;

/**
 *
 * @author USER
 */
public class AdminDetail {
    private String adminID;
    private String password;
    private int phoneNo;
    private int ICNo;
    
    public AdminDetail(){
            
        }

    public String getadminID() {
        return adminID;
    }

    public void setadmintID(String adminID) {
        this.adminID = adminID;
    }

    public String getpassword() {
        return password;
    }

    public void setpassword(String password) {
        this.password = password;
    }

    public int getphoneNo() {
        return phoneNo;
    }

    public void setphoneNo(int phoneNo) {
        this.phoneNo = phoneNo;
    }

    public int getICNo() {
        return ICNo;
    }

    public void setICNo(int ICNo) {
        this.ICNo = ICNo;
    }

}
