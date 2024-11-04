package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.demo.actions.beans.AlumnoBean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AlumnoAction extends ActionSupport {

    private AlumnoBean alumnoBean;


    public AlumnoBean getAlumnoBean() {
        return alumnoBean;
    }

    public void setAlumnoBean(AlumnoBean alumnoBean) {

        this.alumnoBean = alumnoBean;

    }

    @Override
    public void validate() {
        if (alumnoBean.getNombre().isEmpty()) {

            addFieldError("alumnoBean.nombre", "El nombre es obligatorio.");
        }

        if(alumnoBean.getDni().isEmpty()){
            addFieldError("alumnoBean.dni", "El DNI es obligatorio");
        }else {
            if (alumnoBean.getDni().length()!= 9){
                addFieldError("alumnoBean.dni", "El DNI debe contener 9 caracteres");
            }
        }
        if(alumnoBean.getApellidos().isEmpty()){
            addFieldError("alumnoBean.apellidos", "El apellido es obligatorio.");
        }
        if (alumnoBean.getFecha() == null || alumnoBean.getFecha().toString().isEmpty()) {
            addFieldError("alumnoBean.fecha", "La fecha de nacimiento es obligatoria.");
        }
        if(alumnoBean.getEmail().isEmpty()){
            addFieldError("alumnoBean.email", "El email es obligatorio.");
        }
        if(alumnoBean.getTelefono().isEmpty()){
            addFieldError("alumnoBean.telefono", "El teléfono es obligatorio.");
        }else{
            String telefonoRegex = "^(6|7)\\d{8}$"; // 9 dígitos, comienza con 6 o 7
            if (!alumnoBean.getTelefono().matches(telefonoRegex)) {
                addFieldError("alumnoBean.telefono", "El teléfono debe ser un número de 9 dígitos que comience con 6 o 7.");
            }
        }
        if(alumnoBean.getDireccion().isEmpty()){
            addFieldError("alumnoBean.direccion", "La dirección es obligatoria");
        }

    }


    @Override
    public String execute() throws Exception {
        System.out.println("execute!!");
        return SUCCESS;
    }
}