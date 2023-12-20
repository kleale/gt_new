{% set title = "Доступ с вашего IP-адреса временно ограничен" %}

<!DOCTYPE html>
<html>
  {% include "template/head.tpl" %}
  <body class="admin sidebar-mini layout-fixed layout-navbar-fixed">
    <div id="wrapper">
        {% include 'template/adm/aside/aside.tpl' %}
        <div class="content-wrapper">
          {% include 'template/adm/breadcrumbs.tpl' %}
          {% include 'template/adm/match.tpl' %}
        </div>
    </div>
    {% include "template/scripts.tpl" %}
  </body>
</html>
