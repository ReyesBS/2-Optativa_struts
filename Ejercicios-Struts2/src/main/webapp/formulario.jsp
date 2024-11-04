
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>



<s:form theme="simple" id="itemAdd" name="itemAdd" action="alumno" method="post" >
  <h1><s:text name="form.tittle.message"/></h1>
  <table>
    <tr>
      <td class="evenRow">
          <s:fielderror fieldName = "alumnoBean.dni" />
         <s:text name="form.dni.message"/>
         <s:textfield id="dni" name="alumnoBean.dni" />
      </td>

    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.nombre" />
        <s:text name="form.nombre.message"/>
        <s:textfield id="nombre" name="alumnoBean.nombre"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.apellidos" />
        <s:text name="form.apellidos.message"/>
        <s:textfield id="apellidos" name="alumnoBean.apellidos"/>
      </td>
    </tr>
    <tr>
        <td class="evenRow">
            <s:fielderror fieldName="alumnoBean.fecha" />
            <s:text name="form.fecha.message"/>
            <s:textfield  id="fecha" name="alumnoBean.fecha" placeholder = "dd/mm/aaaa"/>
        </td>
      </tr>

  <tr>
        <td class="evenRow">
          <s:fielderror fieldName = "alumnoBean.telefono" />
          <s:text name="form.telefono.message"/>
          <s:textfield id="telefono" name="alumnoBean.telefono"/>
        </td>
      </tr>

        <tr>
            <td class="evenRow">
              <s:fielderror fieldName = "alumnoBean.email" />
              <s:text name="form.email.message"/>
              <s:textfield type="email" id="email" name="alumnoBean.email"/>
            </td>
          </tr>
      <tr>
          <td class="evenRow">
            <s:fielderror fieldName = "alumnoBean.direccion" />
            <s:text name="form.direccion.message"/>
            <s:textfield id="direccion" name="alumnoBean.direccion"/>
          </td>
        </tr>
        <tr>
    <td class="evenRow">
        <s:submit align="left" value="Enviar"/>
    </td>
  </tr>
  </table>
</s:form>

</body>
</html>
