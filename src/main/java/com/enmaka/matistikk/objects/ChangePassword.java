package com.enmaka.matistikk.objects;

import com.enmaka.matistikk.security.PasswordHash;

/**
 *
 * @author Team ENMAKA
 * 
 * Klassen brukes ved bytting av passord.
 * 
 * For mer informasjon om klassen, se designdokumentet kapittel 4.7.2.
 */

public class ChangePassword {
    private String oldPassword;
    private String newPassword1;
    private String newPassword2;

    public String getOldPassword() {        
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }

    public String getNewPassword1() {
        return newPassword1;
    }

    public void setNewPassword1(String newPassword1) {      
        this.newPassword1 = newPassword1;
    }

    public String getNewPassword2() {       
        return newPassword2;
    }

    public void setNewPassword2(String newPassword2) {        
        this.newPassword2 = newPassword2;
    }
}
