						<p>Pozdrawiamy,<br />{{ SHOP_NAME }}</p>
                        <!-- /content -->
                    </td>
                </tr>
            </table>
            <!-- /body -->
            
            <!-- footer -->
            <table width="604" border="0" cellpadding="0" cellspacing="0" style="font-family:'Segoe UI',Arial,sans-serif; font-size:11px; color:#919191;">
                <tr>
                    <td align="left">
                        <p style="margin:11px 0;">
                            <a href="{{ path('frontend.conditions') }}" title="Regulamin" style="color:#484848; text-decoration:none;">{% trans %}TXT_CONDITIONS{% endtrans %}</a> &nbsp; | &nbsp;
                            <a href="{{ path('frontend.contact') }}" title="Zwroty" style="color:#484848; text-decoration:none;">{% trans %}TXT_CONTACT{% endtrans %}</a> &nbsp; | &nbsp;
                            <a href="{{ path('frontend.news') }}" title="Reklamacje" style="color:#484848; text-decoration:none;">{% trans %}TXT_NEWS{% endtrans %}</a> &nbsp; | &nbsp;
                            <a href="{{ path('frontend.clientorder') }}" title="FAQ" style="color:#484848; text-decoration:none;">{% trans %}TXT_ORDER_STATUS{% endtrans %}</a>
                        </p>
                    </td>
                    <td width="30%" align="right">
                        <p style="margin:11px 0;">&copy; 2012 {{ SHOP_NAME }}</p>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <p>{% trans %}TXT_FOOTER_EMAIL{% endtrans %}</p>
                    </td>
                </tr>
            </table>
            <!-- /footer -->                    
            
        </td></tr></table>
        <!-- /wrapper -->
        
    </td></tr></table>
    <!-- /body-table -->

</body>
</html>