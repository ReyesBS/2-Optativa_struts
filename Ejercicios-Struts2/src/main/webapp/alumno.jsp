<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>

  <h1><s:text name="wellcome.tittle.message"/></h1>
  <table>
  <tr>
      <td class="evenRow">
        <s:text name="form.dni.message"/>
        <s:property value="alumnoBean.dni"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:text name="form.nombre.message"/>
        <s:property value="alumnoBean.nombre"/>
      </td>
    </tr>
  <tr>
    <td class="evenRow">
       <s:text name="form.apellidos.message"/>
       <s:property value="alumnoBean.apellidos"/>
    </td>

  </tr>
    <tr>
      <td class="evenRow">
         <s:text name="form.fecha.message"/>
         <s:property value="alumnoBean.fecha" />
      </td>

    </tr>
      <tr>
        <td class="evenRow">
           <s:text name="form.telefono.message"/>
           <s:property value="alumnoBean.telefono"/>
        </td>

      </tr>
        <tr>
          <td class="evenRow">
             <s:text name="form.email.message"/>
             <s:property value="alumnoBean.email"/>
          </td>

        </tr>
          <tr>
            <td class="evenRow">
               <s:text name="form.direccion.message"/>
               <s:property value="alumnoBean.direccion"/>
            </td>

          </tr>

  </table>

</body>
</html>