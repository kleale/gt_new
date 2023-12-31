{% set title = "Вы уходите с game-tournaments.com по внешней ссылке" %}
<!DOCTYPE html>
<html>
  {% include "template/head.tpl" %}
  <body class="blockedPage">
    <style>
      html {
        height: 100%;
      }
      .blockedPage {
        height: 100%;
      }
      .blockedPage,
      .blockedText {
        display: flex;
        align-content: center;
        align-items: center;
        justify-content: center;
      }
      .blockedText {
        flex-flow: column;
      }
      .blockedPage .blockedText p {
        margin-bottom: 25px;
      }

      /*ani bg*/
      .cristalBall {
        width: 100%;
        margin: auto;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 99999;
      }

      .ball {
        text-align: center;
      }

      .background {
        background-color: black;
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
      }

      .circle {
        background-color: #1a191a;
        height: 1300px;
        border-radius: 50%;
        width: 1300px;
        margin: auto;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
      }

      .circle1 {
        background-color: #1f1e20;
        height: 1000px;
        border-radius: 50%;
        width: 1000px;
        margin: auto;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        animation: pulse3 10s linear infinite;
      }

      .circle2 {
        background-color: #212022;
        height: 700px;
        border-radius: 50%;
        width: 700px;
        margin: auto;
        position: absolute;
        top: 50%;
        left: 50%;
        color: white;
        font-size: 40px;
        transform: translate(-50%, -50%);
        animation: pulse 4s linear infinite;
      }

      .circle3 {
        background-color: #252426;
        height: 500px;
        border-radius: 50%;
        width: 500px;
        margin: auto;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        font-size: 50px;
        animation: pulse2 3s linear infinite;
      }

      @keyframes pulse {
        0% {
          width: 700px;
          height: 700px;
        }
        50% {
          width: 750px;
          height: 750px;
        }
        100% {
          width: 700px;
          height: 700px;
        }
      }

      @keyframes pulse2 {
        0% {
          width: 500px;
          height: 500px;
        }
        50% {
          width: 550px;
          height: 550px;
        }
        100% {
          width: 500px;
          height: 500px;
        }
      }

      @keyframes pulse3 {
        0% {
          width: 1000px;
          height: 1000px;
        }
        50% {
          width: 1050px;
          height: 1050px;
        }
        100% {
          width: 1000px;
          height: 1000px;
        }
      }
    </style>
    <div class="cristalBall">
      <div class="cristal">
        <div class="ball">
          <p>
            <img width="60px" src="https://game-tournaments.com/assets/img/logo_gt_footer.png" alt="Game-Tournaments" class="" />
          </p>
          <p>
            <span>Вы уходите с <u>game-tournaments.com</u> на другой сайт </span>
          </p>
          <p style="font-size: 12px; line-height: 15px; display: inline-block; overflow: hidden; background: #cccccc0a; padding: 10px; max-width: 370px; border-radius: 3px">
            <a href="/">https://betboom.ru/sport/EventView/11347666#events/11347666/11347666#events/11347666/11347666#events/11347666/11347666#events/11347666/11347666#events/11347666</a>
          </p>
          <p>Вы можете не переходить и вернуться <a href="/">назад</a> или:</p>
          <div class="justify-center flex text-center">
            <button class="btn btn-lg btn-default">Да, я все понял. Пустите меня по ссылке!</button>
          </div>
        </div>
      </div>
    </div>
    <div class="background">
      <div class="circle">
        <div class="circle1">
          <div class="circle2">
            <div class="circle3"></div>
          </div>
        </div>
      </div>
    </div>
    {% include "template/scripts.tpl" %}
  </body>
</html>
