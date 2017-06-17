package com.restx.data.codestabs;

import javax.persistence.*;

/**
 * Created by wailm.yousif on 6/2/17.
 */

@Entity
public class CostCategory
{
    @Id
    private String code;

    private boolean userDefined;

    public CostCategory() { }

    public CostCategory(String code, boolean userDefined) {
        this.code = code;
        this.userDefined = userDefined;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public boolean isUserDefined() {
        return userDefined;
    }

    public void setUserDefined(boolean userDefined) {
        this.userDefined = userDefined;
    }
}