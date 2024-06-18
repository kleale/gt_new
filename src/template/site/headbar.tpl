<header id="bar" class="topbar">
  <a id="menu-toggle" class="bartoggle" href="javascript:;"
    ><i class="fa fa-fw fa-bars"></i
  ></a>
  <div class="pull-right">
    <!-- presentPopover  -->
    <style>
      .presentButton {
        display: none;
      }
      @keyframes tilt-n-move-shaking {
        0% {
          transform: translate(0, 0) rotate(0deg);
        }
        5% {
          transform: translate(1px, 1px) rotate(5deg);
        }
        10% {
          transform: translate(0, 0) rotate(0deg);
        }
        15% {
          transform: translate(-1px, 1px) rotate(-5deg);
        }
        20% {
          transform: translate(0, 0) rotate(0deg);
        }
        25% {
          transform: translate(0, 0) rotate(0deg);
        }
        30% {
          transform: translate(1px, 1px) rotate(5deg);
        }
        40% {
          transform: translate(0, 0) rotate(0deg);
        }
        50% {
          transform: translate(-1px, 1px) rotate(-5deg);
        }
        55% {
          transform: translate(0, 0) rotate(0deg);
        }
      }
      .presentButton {
        animation: tilt-n-move-shaking 1s infinite;

        display: inline-flex;
        height: 30px;
        width: 30px;
        background: #ffffff17;
        margin: 5px 0;
        border-radius: 3px;
        align-content: center;
        align-items: center;
        justify-content: center;
        position: relative;
        border: 0;
        padding: 0;
      }

      .presentButton svg {
        fill: #91cdd7;
      }

      .presentButton:hover,
      .presentButton:focus,
      .presentButton:active {
        background: #91cdd7;
        outline: 0;
        animation: none;
      }

      .presentButton:hover svg,
      .presentButton:focus svg,
      .presentButton:active svg {
        fill: #fff;
      }

      .presentButton:hover .presentPopover,
      .presentButton:focus .presentPopover,
      .presentButton:active .presentPopover {
        position: absolute;
        display: block;
      }

      .presentPopover {
        z-index: 2000;
        display: none;
        position: absolute;
        top: 20px;
        left: 0;
        transform: translateX(-50%);
        margin-left: 15px;
        padding-top: 20px;
      }

      .presentPopover .popover-body {
        border: 1px solid #91cdd7;
        border-radius: 4px;
        overflow: hidden;
        display: block;
      }

      .presentPopover .arrow {
        position: absolute;
        display: block;
        width: 10px;
        height: 10px;
        margin: 0 4px;
        top: 10px;
        left: 50%;
        margin-left: -10px;
      }

      .presentPopover .arrow::before,
      .presentPopover .arrow::after {
        position: absolute;
        display: block;
        content: "";
        border-color: transparent;
        border-bottom-color: transparent;
        border-style: solid;
      }

      .presentPopover > .arrow::before {
        top: 0;
        border-width: 0 10px 10px 10px;
        border-bottom-color: rgba(0, 0, 0, 0.25);
      }

      .presentPopover > .arrow::after {
        top: 1px;
        border-width: 0 10px 10px 10px;
        border-bottom-color: #91cdd7;
      }
    </style>
    <noindex>
      <button
        href="javascript:;"
        class="bar-icon presentButton"
        data-toggle="presentPopover"
        data-img="/media/a/banner554.gif"
      >
        <svg
          version="1.1"
          id="Layer_1"
          xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          x="0px"
          y="0px"
          viewBox="0 0 512 512"
          style="enable-background: new 0 0 512 512"
          xml:space="preserve"
          width="20px"
          height="20px"
        >
          <g>
            <path
              d="M141.591,17.586C130.542,6.712,115.386,0,98.658,0c-33.81,0-61.217,27.408-61.217,61.217s27.408,61.217,61.217,61.217 h79.429V85.598c0-9.533,1.729-18.668,4.876-27.117L141.591,17.586z"
            ></path>
          </g>
          <g>
            <path
              d="M413.342,0c-16.728,0-31.884,6.712-42.935,17.586l-41.371,40.893c3.148,8.451,4.876,17.586,4.876,27.118v36.837h79.429 c33.81,0,61.217-27.408,61.217-61.217S447.152,0,413.342,0z"
            ></path>
          </g>
          <g>
            <path
              d="M256,41.077c-24.588,0-44.522,19.933-44.522,44.522v43.008h89.043V85.599C300.522,61.01,280.588,41.077,256,41.077z"
            ></path>
          </g>
          <g>
            <polygon
              points="333.913,278.261 333.913,398.519 256,340.084 178.087,398.519 178.087,278.261 55.652,278.261 55.652,512 456.348,512 456.348,278.261"
            ></polygon>
          </g>
          <g>
            <rect
              x="333.913"
              y="155.826"
              width="155.826"
              height="89.043"
            ></rect>
          </g>
          <g>
            <rect x="22.261" y="155.826" width="155.826" height="89.043"></rect>
          </g>
          <g>
            <polygon
              points="211.478,155.826 211.478,331.737 256,298.346 300.522,331.737 300.522,155.826"
            ></polygon>
          </g>
        </svg>
        <div class="presentPopover" role="tooltip">
          <div class="arrow"></div>
          <a target="_blank" href="/go?n=554" class="popover-body">
            <img
              src="https://game-tournaments.com/media/a/banner554.gif"
              width="145px"
              class="yaadstracker"
              id="trck_554"
            />
          </a>
        </div>
      </button>
    </noindex>

    <script>
      //present popover
      $(document).ready(function () {
        if (autoShowStatus()) {
          if ($('[data-toggle="presentPopover"]')) {
            var maxScroll =
              (document.body.scrollHeight - $(window).innerHeight()) / 2;
            $(window).scroll(function () {
              if (
                $(window).scrollTop() > document.body.scrollHeight / 4 ||
                $(window).scrollTop() >= maxScroll
              ) {
                $('[data-toggle="presentPopover"]').trigger("focus");
              }
            });
          }
        }
        $('[data-toggle="presentPopover"]').on("focus", function () {
          autoShow();
        });
        function autoShow() {
          setAutoShowCookie();
          $(window).off("scroll");
        }
        function autoShowStatus() {
          var status = false;
          if ($(window).innerWidth() > 769) {
            if (document.cookie.indexOf("autoshow=") == -1) {
              status = true;
            }
          }
          return status;
        }
        function setAutoShowCookie() {
          const expires = new Date();
          expires.setDate(expires.getDate() + 7);
          document.cookie = `autoshow=true;expires=${expires.toGMTString()};path=/;secure`;
        }
      });
    </script>
    <a
      href="javascript:;"
      class="pull-left gttime hidden-xs active"
      onclick="get_time()"
      ><i class="fa fa-fw fa-clock-o"></i> <span class="utime">17:32 MSK</span>
      <span class="caret"></span
    ></a>
    <div class="btn-group btn-lang">
      <a
        class="pull-left gttime dropdown-toggle"
        href="javascript:;"
        data-toggle="dropdown"
        >Language <span class="caret"></span
      ></a>
      <ul class="dropdown-menu">
        <li>
          <a
            href="/dota-2/international-2024/eastern-europe/9-pandas-vs-night-pulse-563778"
            ><img src="https://game-tournaments.com/media/flags/3.svg" class="flag" /> Русский</a
          >
        </li>
        <li>
          <a
            href="/en/dota-2/international-2024/eastern-europe/9-pandas-vs-night-pulse-563778"
            ><img src="https://game-tournaments.com/media/flags/2.svg" class="flag" /> English</a
          >
        </li>
      </ul>
    </div>
    <span id="user"
      ><div class="entereg pull-right">
        <a class="btn btn-sm btn-primary" href="/login">Login</a>
        <a class="btn btn-sm btn-primary" href="/reg">Sign up</a>
      </div></span
    >
  </div>
  <ol
    id="breadcumbs"
    class="breadcrumb hidden-xs"
    itemscope=""
    itemtype="https://schema.org/BreadcrumbList"
  >
    <li
      itemprop="itemListElement"
      itemscope=""
      itemtype="https://schema.org/ListItem"
    >
      <a itemprop="item" href="/en/">
        <span itemprop="name">GT</span>
      </a>
      <meta itemprop="position" content="1" />
    </li>
    <li
      itemprop="itemListElement"
      itemscope=""
      itemtype="https://schema.org/ListItem"
    >
      <a itemprop="item" title="Dota 2" href="/en/dota-2">
        <span itemprop="name">Dota 2</span>
      </a>
      <meta itemprop="position" content="2" />
    </li>
    <li
      itemprop="itemListElement"
      itemscope=""
      itemtype="https://schema.org/ListItem"
    >
      <a itemprop="item" title="TI 2024" href="/en/dota-2/international-2024">
        <span itemprop="name">TI 2024</span>
      </a>
      <meta itemprop="position" content="3" />
    </li>
    <li
      itemprop="itemListElement"
      itemscope=""
      itemtype="https://schema.org/ListItem"
    >
      <a
        itemprop="item"
        title="Closed Qualifier"
        href="/en/dota-2/international-2024/eastern-europe"
      >
        <span itemprop="name">Closed Qualifier</span>
      </a>
      <meta itemprop="position" content="4" />
    </li>
    <li
      itemprop="itemListElement"
      itemscope=""
      itemtype="https://schema.org/ListItem"
    >
      <span itemprop="name">9Pandas vs NP</span>
      <meta itemprop="position" content="5" />
    </li>
  </ol>
</header>
