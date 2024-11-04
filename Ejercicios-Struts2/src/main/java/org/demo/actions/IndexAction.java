
package org.demo.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({
        @Result(name = Action.SUCCESS, location = "${redirectName}", type = "redirectAction")
})
public class IndexAction extends ActionSupport {

    private String redirectName;

    public String execute() {
        redirectName = "index";
        return Action.SUCCESS;
    }

    public String getRedirectName() {
        return redirectName;
    }

}
