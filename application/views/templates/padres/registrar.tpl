{include file="headers/administrador.tpl"}
<script>
    {literal}
        $(document).ready(function(){
            $.post("/padres/getestudiantes",{},function(data){
                $("#estudiante_cpm").autocomplete({source:data.labels});
            },"json");
            $.post("/padres/getpadres",{},function(data){
                $("#padre_cpm").autocomplete({source:data.labels});
            },"json");
        });
    {/literal}
</script>
<fieldset><legend>Importar Nuevo Padre y Asignar</legend>
<ul class="iconmenu">
    <li>
        <a href="#registrar">
        <img src="/css/icons/add.png"/>
        <span>Registrar Nuevo Padre y Asignar</span></a>
    </li>
    <li>
        <a href="#">
        <img src="/css/icons/upload.png"/>
        <span>Importar CVS</span></a>
    </li>
</ul>
<fieldset><legend>Datos Personales de Padre de Familia</legend>
<form id="formContraProfe" name="formContraProfe" method="post" action="/profesor/contratarProfe">
<table class="buscartable">
  <tr>
    <td>
      <label for="nombres_prof">Nombres:</label>
    </td>
    <td>   
        <input class="text" type="text" name="nombre" id="nombre" value="{$smarty.post.nombre}"/>{$errorNom}
    </td>
  </tr>
  <tr>
    <td>
    	<label for="apelli_prof">Apellidos:</label>
    </td>
    <td>
        <input class="text" type="text" name="apellido" id="apellido" value="{$smarty.post.apellido}"/>{$errorApell}
    </td>
  </tr>
  <tr>
    <td>
    	<label for="apelli_prof">Telf:</label>
    </td>
    <td>
        <input class="text" type="text" name="telf" id="telf" value="{$smarty.post.telf}"/>{$errorApell}
    </td>
  </tr>
  <tr>
    <td colspan="2"><input class="boton" type="submit" name="contratar" id="contratar" value="Crear" /></td>
    </tr>
</table>
</fieldset>
</form>
    <fieldset>
        <legend>Asignar Estudiante</legend>
        <form action="">
        <table class="buscartable">
            <tr>
                <td>
                    <label for="Padre_label">Buscar Padre:</label>
                </td>
                <td>
                    <input type="text" value="" id="padre_cpm" style="width:200px"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                        <label for="Padre_label">Asiganar a :</label>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="Padre_label">Buscar Estudiante:</label>
                </td>
                <td>
                    <input type="text" value="" id="estudiante_cpm" style="width:200px"/>
                </td>
            </tr>
        </table>
        </form>
        
    </filedset>
</fieldset>
{include file="footers/padre.tpl"}