{% extends "layout.tpl" %}
{% block content %}
<h2><img src="{{ DESIGNPATH }}_images_panel/icons/modules/newsletter-list.png" alt=""/>{% trans %}TXT_RECIPIENT_LIST{% endtrans %}</h2>

<ul class="possibilities">
	<li><a href="{{ URL }}{{ CURRENT_CONTROLLER }}/add" class="button" title="{% trans %}TXT_ADD_RECIPIENT_LIST{% endtrans %}"><span><img src="{{ DESIGNPATH }}_images_panel/icons/buttons/add.png" alt=""/>{% trans %}TXT_ADD_RECIPIENT_LIST{% endtrans %}</span></a></li>
</ul>

<div class="block">
	<div id="list-recipientlist"></div>
</div>

<script type="text/javascript">
   
   
   
   /*<![CDATA[*/
   
    function editRecipientList(dg, id) {
    location.href = '{{ URL }}{{ CURRENT_CONTROLLER }}/edit/' + id + '';
	 };
   
	 function deleteRecipientList(dg, id) {
	 	var oRow = theDatagrid.GetRow(id);
		var title = '{% trans %}TXT_DELETE{% endtrans %}';
		var msg = '{% trans %}TXT_DELETE_CONFIRM{% endtrans %} <strong>' + oRow.name +'</strong> ?';
		var params = {
			dg: dg,
			id: id
		};
		var func = function(p) {
			return xajax_doDeleteRecipientList(p.dg, p.id);
		};
    new GF_Alert(title, msg, func, true, params);
	 };
	 
	 function deleteMultipleRecipientList(dg, ids) {
		var title = '{% trans %}TXT_DELETE{% endtrans %}';
		var msg = '{% trans %}TXT_DELETE_CONFIRM{% endtrans %} ' + ids.join(', ') + '?';
		var params = {
			dg: dg,
			ids: ids
		};
		var func = function(p) {
			return xajax_doDeleteRecipientList(p.dg, p.ids);
		};
    new GF_Alert(title, msg, func, true, params);
	 };
   
	 var theDatagrid;
	 
   $(document).ready(function() {
		
		var column_id = new GF_Datagrid_Column({
			id: 'idrecipientlist',
			caption: '{% trans %}TXT_ID{% endtrans %}',
			appearance: {
				width: 90,
				visible: false
			},
			filter: {
				type: GF_Datagrid.FILTER_BETWEEN,
			}
		});
		
		var column_name = new GF_Datagrid_Column({
			id: 'name',
			caption: '{% trans %}TXT_NAME{% endtrans %}',
			filter: {
				type: GF_Datagrid.FILTER_INPUT,
			}
		});

		var column_adddate = new GF_Datagrid_Column({
			id: 'adddate',
			caption: '{% trans %}TXT_ADDDATE{% endtrans %}',
			appearance: {
				width: 140,
				visible: false
			},
			filter: {
				type: GF_Datagrid.FILTER_BETWEEN,
			}
		});

    var options = {
			id: 'recipientlist',
			mechanics: {
				key: 'idrecipientlist',
				rows_per_page: {{ globalsettings.interface.datagrid_rows_per_page }}
			},
			event_handlers: {
				load: xajax_LoadAllRecipientList,
				delete_row: deleteRecipientList,
				edit_row: editRecipientList,
				delete_group: deleteMultipleRecipientList,
				{% if globalsettings.interface.datagrid_click_row_action == 'edit' %}
				click_row: editRecipientList
				{% endif %}
			},
			columns: [
				column_id,
				column_name,
				column_adddate,
			],
			row_actions: [
				GF_Datagrid.ACTION_EDIT,
				GF_Datagrid.ACTION_DELETE,
			],
			group_actions: [
				GF_Datagrid.ACTION_DELETE
			],
			context_actions: [
				GF_Datagrid.ACTION_EDIT,
				GF_Datagrid.ACTION_DELETE,
			]
    };
    
    theDatagrid = new GF_Datagrid($('#list-recipientlist'), options);
    
   });
   
   /*]]>*/
   
   
   
  </script>
{% endblock %}