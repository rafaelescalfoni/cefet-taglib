<%@ attribute name="id" required="true" %>
<input id="${id}" name="${id}" type="text">
<input type="submit" value="Entre com a data" />
<script type="text/javascript">
     $("#${id}").datepicker();
</script>