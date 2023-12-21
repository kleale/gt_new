{% set jobs = [ "achievements", "money", 'players', 'prize', 'achievements'] %}

<section class="page">
  <div class="container">
    <div class="pagebg">
      <div class="flex">
        <div class="col grow">
          <div class="panel panel-default panel-login">
            <div class="panel-heading">
              <h3 class="panel-title">Матчи</h3>
            </div>
            <div class="panel-body"></div>
          </div>
        </div>
        <div class="col" style="width: 400px">
          <div class="panel panel-default panel-login">
            <div class="panel-heading">
              <h3 class="panel-title">Логи</h3>
            </div>

            <table class="table table-striped table-condensed table-logs">
              <thead>
                <tr>
                  <th>Date</th>
                  <th>User</th>
                  <th>Event</th>
                </tr>
              </thead>
              <tbody>
                {% for i in 0..6 %}
                <tr>
                  <td width="80">
                    <span class="sct" data-opt="ynt" data-format="%j% %ms% %y%, %h%:%i%" datetime="1702875883">18 дек 08:04</span>
                  </td>
                  <td>
                    {% if i == 1 %}
                    <a href="javascript:;" onclick="log_action(672)">notdrax#67{{ i }}</a>
                    {% else %}
                    <a href="javascript:;" onclick="log_action(672)">drax#67{{ i }}</a>
                    {% endif %}
                  </td>
                  <td>
                    {% if i == 1 %}
                    <a> *[tournament#830{{ i }}] +[team#9556{{ i }}] - [team#955{{ i }}] </a>
                    {% elseif i == 2 %}
                    <a> *[tournament#830{{ i }}] +[team#9556{{ i }}] ] </a>
                    {% elseif i == 4 %}
                    <a> *[team#9556{{ i }}] </a>
                    {% else %}
                    <a> *[tournament#830{{ i }}] </a>
                    {% endif %} {% if i == 1 %}
                    <span class="label label-success">NEW</span>
                    {% endif %}
                  </td>
                </tr>

                {% endfor %}
              </tbody>
            </table>

            <div class="panel-footer">
              <nav>
                <ul class="pagination">
                  <li class="active"><a href="javascript:;" onclick="pages('actions', 1)">1</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 2)">2</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 3)">3</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 4)">4</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 5)">5</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 6)">6</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 7)">7</a></li>
                  <li>
                    <a href="javascript:;" onclick="pages('actions', 7);"><span aria-hidden="true">»</span></a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>

          <br />

          <div class="panel panel-default panel-login">
            <div class="panel-heading">
              <h3 class="panel-title">Джобы</h3>
            </div>

            <table class="table table-striped">
              <tbody>
                {% for job in jobs %}
                <tr>
                  <td width="10">[2]</td>
                  <td>
                    <a>{{ job }}</a>
                  </td>
                  <td>0.02s</td>
                  <td>
                    {% if job == 'players' %}
                    <span class="label label-warning">Error</span>
                    {% endif %}
                  </td>
                </tr>

                {% endfor %}
              </tbody>
            </table>
          </div>

          <br />

          <div class="panel panel-default panel-login">
            <div class="panel-heading">
              <h3 class="panel-title">Логи 3</h3>
            </div>

            <table class="table table-striped table-condensed table-logs">
              <tbody>
                {% for i in 0..6 %}
                <tr>
                  <td width="120">
                    <i class="fa fa-fw fa-clock-o"></i>
                    <span class="sct" data-opt="ynt" data-format="%j% %ms% %y%, %h%:%i%" datetime="1702875883">18.12.22 08:04</span>
                    <br />
                    <i class="fa fa-fw fa-user"></i>
                    {% if i == 1 %}
                    <a href="javascript:;" onclick="log_action(672)">notdrax#67{{ i }}</a>
                    {% else %}
                    <a href="javascript:;" onclick="log_action(672)">drax#67{{ i }}</a>
                    {% endif %}
                  </td>

                  <td>
                    {% if i == 1 %}
                    <a> *[tournament#830{{ i }}] +[team#9556{{ i }}] - [team#955{{ i }}] </a>
                    {% elseif i == 2 %}
                    <a> *[tournament#830{{ i }}] +[team#9556{{ i }}] ] </a>
                    {% elseif i == 4 %}
                    <a> *[team#9556{{ i }}] </a>
                    {% else %}
                    <a> *[tournament#830{{ i }}] </a>
                    {% endif %}
                  </td>

                  <td>
                    {% if i == 1 %}
                    <span class="label label-success">NEW</span>
                    {% endif %}
                  </td>
                </tr>

                {% endfor %}
              </tbody>
            </table>

            <div class="panel-footer">
              <nav>
                <ul class="pagination">
                  <li class="active"><a href="javascript:;" onclick="pages('actions', 1)">1</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 2)">2</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 3)">3</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 4)">4</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 5)">5</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 6)">6</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 7)">7</a></li>
                  <li>
                    <a href="javascript:;" onclick="pages('actions', 7);"><span aria-hidden="true">»</span></a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>

          <br />

          <div class="panel panel-default panel-login">
            <div class="panel-heading">
              <h3 class="panel-title">Логи</h3>
            </div>
            
              <div class="logList">
                {% for i in 0..6 %}
                <div class="logItem">
                  <div class="date">
                    <span class="sct" data-opt="ynt" data-format="%j% %ms% %y%, %h%:%i%" datetime="1702875883">18.12.22 08:04</span>
                  </div>
                  <div class="name">
                    {% if i == 1 %}
                    <a class="logUser" href="javascript:;" onclick="log_action(672)">notdrax#67{{ i }}</a>
                    {% else %}
                    <a class="logUser" href="javascript:;" onclick="log_action(672)">drax#67{{ i }}</a>
                    {% endif %}
                  </div> 
                  <div class="status">
                    {% if i == 1 %}
                     <span class="label label-success">NEW</span>
                     {% endif %}
                   </div>
                   <div class="break"></div> <!-- break -->
                  <div class="event">
                    {% if i == 1 %}
                    <a> *[tournament#830{{ i }}] +[team#9556{{ i }}] - [team#955{{ i }}] </a>
                    {% elseif i == 2 %}
                    <a> *[tournament#830{{ i }}] +[team#9556{{ i }}] ] </a>

                    {% elseif i == 4 %}
                    <a> *[team#9556{{ i }}] </a>

                    {% else %}
                    <a> *[tournament#830{{ i }}] </a>
                    {% endif %}
                  </div>
                 
                </div>
                {% endfor %}
              </div>
            
            <div class="panel-footer">
              <nav>
                <ul class="pagination">
                  <li class="active"><a href="javascript:;" onclick="pages('actions', 1)">1</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 2)">2</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 3)">3</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 4)">4</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 5)">5</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 6)">6</a></li>
                  <li><a href="javascript:;" onclick="pages('actions', 7)">7</a></li>
                  <li>
                    <a href="javascript:;" onclick="pages('actions', 7);"><span aria-hidden="true">»</span></a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>

          <br />

          <div class="panel panel-default panel-login">
            <div class="panel-heading">
              <h3 class="panel-title">Джобы</h3>
            </div>
            <div class="panel-body">
              <table class="table table-striped table-condensed table-logs">
                <tbody>
                  {% for job in jobs %}
                  <tr>
                    <td width="10">[2]</td>
                    <td>
                      <a>{{ job }}</a>
                    </td>
                    <td>0.02s</td>
                    <td>
                      {% if job == 'players' %}
                      <span class="label label-warning">Error</span>
                      {% endif %}
                    </td>
                  </tr>

                  {% endfor %}
                </tbody>
              </table>
            </div>
          </div>

          <br />

          <br />
          <div class="list-group">
            <div class="list-group-item">Какое-то меню со ссылками</div>
            <a href="#" class="list-group-item active"> Cras justo odio </a>
            <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
            <a href="#" class="list-group-item">Morbi leo risus</a>
            <a href="#" class="list-group-item">Porta ac consectetur ac</a>
            <a href="#" class="list-group-item">Vestibulum at eros</a>
          </div>
          <br />

          <div class="panel panel-default panel-login">
            <div class="panel-heading">
              <h3 class="panel-title">Блок</h3>
            </div>
            <div class="panel-body">
              <div class="list-group">
                <a href="#" class="list-group-item active"> Cras justo odio </a>
                <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
                <a href="#" class="list-group-item">Morbi leo risus</a>
                <a href="#" class="list-group-item">Porta ac consectetur ac</a>
                <a href="#" class="list-group-item">Vestibulum at eros</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- <br />
      <div class="box clearfix">
        <h2 class="clearfix">
          Логи
          <figure class="odtip scorecheck" title="" data-original-title="Show results"><input type="checkbox" id="scrorecur" onclick="show_scores('current',this.checked);" /><label for="scrorecur"></label></figure>
          <a class="pull-right mrefresh" onclick="match_upd()" href="javascript:;"><i class="fa fa-history"></i></a>
        </h2>
        <div id="block_matches_current">
          <ul class="items-list">
            <li><a href="/adm/news/ru">[RU] Новости</a></li>
            <li><a href="/adm/news/en">[EN] News</a></li>
            <li><a href="/adm/news/pt">[PT] Notícias</a></li>
          </ul>
        </div>
      </div> -->
    </div>
  </div>
</section>
