package com.nwpu.tag;

import com.nwpu.pojo.Admin;
import com.nwpu.pojo.User;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class LoginFailTag extends TagSupport {
    public int doStartTag() {
        JspWriter out = pageContext.getOut();
        String fail = (String) pageContext.getSession().getAttribute("loginFail");
        try {
            out.println(fail);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }

    public int doEndTag() {
        return EVAL_PAGE;
    }
}