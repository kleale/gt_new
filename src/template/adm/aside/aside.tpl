<aside class="main-sidebar sidebar-dark-primary elevation-4 os-host os-theme-dark os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-scrollbar-vertical-hidden os-host-transition">
  <div class="brand-link">
    <a href="/"><img src="https://game-tournaments.com/assets/img/logo_gt_footer.png" alt="game tournaments" class="png" /></a>
    <a href="javascript:;" class="gttime" onclick="get_time()"><i class="fa fa-fw fa-clock-o"></i><span class="utime">08:09 CET</span> <span class="caret"></span></a>
  </div>
  <div class="sidebar">
    <div class="user-panel">
      <div class="info">
        <span><a class="d-block" href="/dmp_admins/32/edit">adm@esnadm.com</a></span>
        <span>
          <a class="btn btn-primary btn-xs" href="/dmp_admins/32/edit"><i class="fa fa-pencil"></i></a>
          <a class="btn btn-primary btn-xs" rel="nofollow" data-method="delete" href="/logout"><i class="fa fa-sign-out"></i></a>
        </span>
      </div>
    </div>

    <nav class="mt-2">
      <ul class="nav nav-pills flex-column" id="main-nav">
        <li class="nav-item" id="gt_tournaments-nav"><a class="nav-link active" href="/gt_tournaments">Турниры</a></li>
        <li class="nav-item" id="gt_tournaments_stages-nav"><a class="nav-link" href="/gt_tournaments_stages">Стадии</a></li>
        <li class="nav-item" id="gt_tournaments_rounds-nav"><a class="nav-link" href="/gt_tournaments_rounds">Раунды</a></li>
        <li class="nav-item" id="gt_tournaments_round_tabs-nav"><a class="nav-link" href="/gt_tournaments_round_tabs">Cубраунды</a></li>
        <li class="nav-item" id="gt_match_lists-nav"><a class="nav-link" href="/gt_match_lists">Матчи</a></li>
        <li class="nav-item withLine" id="esn_news_articles-nav">
          <a class="nav-link" href="/esn_news_articles"> <span>Новости</span></a>
          <ul class="nav nav-pills flex-column">
            <li class="nav-item" id="esn_top_news_articles-nav">
              <a class="nav-link" href="/esn_top_news_articles?page=1">Новости: Топ</a>
            </li>
            <li class="nav-item" id="esn_news_authors_lists-nav">
              <a class="nav-link" href="/esn_news_authors_lists?page=1">Новости: Авторы</a>
            </li>
            <li class="nav-item" id="api_lol_matches-nav"></li>
          </ul>
        </li>
        <li class="nav-item withLine" id="esn_news_articles-nav">
          <div class="nav-link">
            <span>API</span>
          </div>
          <ul class="nav nav-pills flex-column">
            <li class="nav-item" id="gt_match_lists-nav">
              <a class="nav-link" href="/api_lol_matches">API: LoL Матчи<span class="right badge badge-danger" data-controller="realtime-partial" data-realtime-partial-key="dmp/api/lol/unbinded_games">110</span></a>
            </li>
            <li class="nav-item" id="api_valorant_matches-nav">
              <a class="nav-link" href="/api_valorant_matches">API: Valorant Матчи<span class="right badge badge-danger"></span></a>
            </li>
          </ul>
        </li>
        <hr />
        <li class="nav-item" id="odds_matches-nav"><a class="nav-link" href="/odds_matches">Коэффициенты на матчи</a></li>
        <li class="nav-item" id="gt_venues-nav"><a class="nav-link" href="/gt_venues">Места проведения</a></li>
        <li class="nav-item" id="gt_teams_lists-nav"><a class="nav-link" href="/gt_teams_lists">Команды</a></li>
        <li class="nav-item" id="gt_player_lists-nav"><a class="nav-link" href="/gt_player_lists">Игроки</a></li>
        <li class="nav-item" id="gt_streams-nav"><a class="nav-link" href="/gt_streams">Стримы</a></li>
        <li class="nav-item" id="gt_video_autos-nav"><a class="nav-link" href="/gt_video_autos">Видео</a></li>
        <li class="nav-item" id="dmp_admins-nav"><a class="nav-link" href="/dmp_admins">Админы</a></li>
        <li class="nav-item" id="dmp_admin_roles-nav"><a class="nav-link" href="/dmp_admin_roles">Роли админов</a></li>
        <li class="nav-item" id="dmp_service_users-nav"><a class="nav-link" href="/dmp_service_users">Внешние сервисы</a></li>
        <li class="nav-item" id="gt_maps-nav"><a class="nav-link" href="/gt_maps">Карты</a></li>
        <li class="nav-item" id="gt_crons-nav"><a class="nav-link" href="/gt_crons">Инструменты</a></li>
        <li class="nav-item" id="gt_countries-nav"><a class="nav-link" href="/gt_countries">Страны</a></li>
        <li class="nav-item" id="esn_odds-nav"><a class="nav-link" href="/esn_odds?page=1">Ставки</a></li>
        <li class="nav-item" id="esn_banners-nav"><a class="nav-link" href="/esn_banners">Баннеры</a></li>
        <li class="nav-item" id="esn_banner_positions-nav"><a class="nav-link" href="/esn_banner_positions?page=1">Баннерные места</a></li>
        <li class="nav-item" id="esn_traffics-nav"><a class="nav-link" href="/esn_traffics">Баннеры: Правила трафика</a></li>
        <li class="nav-item">
          <a class="nav-link" href="#">
            <p>Monitoring</p>
            <i class="fas fa-angle-left right"></i>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a class="nav-link" href="/monitoring/mockserver">
                <p>Mock Server</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" target="_blank" href="/sidekiq">
                <p>Sidekiq</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" target="_blank" href="/redis_dashboard">
                <p>Redis Dashboard</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" target="_blank" href="/redis_web_manager">
                <p>Redis Web Manager</p>
              </a>
            </li>
            <sidekiq_web_path></sidekiq_web_path>
            <li class="nav-item">
              <a class="nav-link" href="/monitoring/cronlive/100">
                <p>Cronlive</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/monitoring/cron/100">
                <p>Cron</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/monitoring/actions/100">
                <p>Actions</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/monitoring/status/100">
                <p>Status</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/monitoring/sql/100">
                <p>Sql</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/monitoring/sqlw/100">
                <p>Sqlw</p>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
</aside>
