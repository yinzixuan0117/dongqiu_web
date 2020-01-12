package com.other;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;
 
import javax.servlet.http.HttpServletRequest;
import java.util.Map;
 
public class AuthInterceptor extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        ActionContext actionContext = actionInvocation.getInvocationContext();
        Map<String, Object> session = actionContext.getSession();
 
        Object currentUser = session.get("currentUser");
 
        String result = null;
        if (currentUser != null) {
            result = actionInvocation.invoke();
        } else {
            HttpServletRequest request = (HttpServletRequest) actionInvocation.getInvocationContext().get(ServletActionContext.HTTP_REQUEST);
            request.setAttribute("error", "»¹Î´µÇÂ¼,ÇëÏÈ");
            result = "error";
        }
        return result;
    }
}
