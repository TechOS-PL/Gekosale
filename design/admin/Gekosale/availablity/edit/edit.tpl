{% extends "layout.tpl" %}
{% block content %}
<h2><img src="{{ DESIGNPATH }}_images_panel/icons/modules/status-edit.png" alt=""/>{% trans %}TXT_EDIT{% endtrans %}</h2>
<ul class="possibilities">
	<li><a href="{$URL}availablity" class="button return"><span><img src="{{ DESIGNPATH }}_images_panel/icons/buttons/arrow-left-gray.png" title="{% trans %}TXT_ORDERSTATUS_LIST{% endtrans %}" alt="{% trans %}TXT_ORDERSTATUS_LIST{% endtrans %}"/></span></a></li>
	<!-- <li><a href="#availablity" rel="reset" class="button" title="{% trans %}TXT_START_AGAIN{% endtrans %}"><span><img src="{{ DESIGNPATH }}_images_panel/icons/buttons/clean.png" alt=""/>{% trans %}TXT_START_AGAIN{% endtrans %}</span></a></li> -->
	<li><a href="#availablity" rel="submit" class="button" title="{% trans %}TXT_SAVE{% endtrans %}"><span><img src="{{ DESIGNPATH }}_images_panel/icons/buttons/check.png" alt=""/>{% trans %}TXT_SAVE{% endtrans %}</span></a></li>
</ul>
{{ form }}
{% endblock %}
