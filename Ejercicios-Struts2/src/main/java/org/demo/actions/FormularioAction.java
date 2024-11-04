
package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.demo.actions.beans.AlumnoBean;


/**
 * <code>Set welcome message.</code>
 */
public class FormularioAction extends ActionSupport {

    private AlumnoBean alumnoBean = new AlumnoBean();


    @Override
    public String execute(){
        return SUCCESS;
    }

    public AlumnoBean getAlumnoBean() {
        return alumnoBean;
    }

    public void setAlumnoBean(AlumnoBean alumnoBean) {
        this.alumnoBean = alumnoBean;


    }



}
