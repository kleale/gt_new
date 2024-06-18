{% set title = "Доступ с вашего IP-адреса временно ограничен" %}

<!DOCTYPE html>
<html>
	{% include "template/head.tpl" %}
	<body>
		<div id="wrapper">
			{% include "template/site/headbar.tpl" %}
			{% include "template/site/backgroundbanner.tpl" %}
			{% include "template/site/sidebar.tpl" %}
			{# {% include "template/site/match-page.tpl" %} #}

			<section class="page" id="page-content-wrapper">
				<div class="container">
					<div class="pagebg">
						{% include "template/site/match/match-header.tpl" %}
						<h2 class="matchh2">VODs for 9Pandas vs NP</h2>
						{% include "template/site/match/match-results.tpl" %}
						<div class="row">
							<div class="col-sm-12 col-md-8">
								<ul id="videos" class="nav nav-tabs navvid">
									<li rel="1" class="active">
										<a href="javascript:;" class="t" onclick="mvideo(1)">Game 1</a>
									</li>
									<li rel="2">
										<a href="javascript:;" class="t" onclick="mvideo(2)">Game 2</a>
									</li>
									<li rel="3">
										<a href="javascript:;" class="t" onclick="mvideo(3)">Game 3</a>
									</li>
								</ul>
								{% include "template/site/blocks/player-block.tpl" %}
							</div>
							<div class="col-sm-12 col-md-4">
								<div class="col-right">
									{% include "template/site/blocks/news-block.tpl" %}

									<div class="box livebet lsoon-div lsoon-div-2">
										<a href="/go?n=770" target="_blank">
											<img src="https://game-tournaments.com/media/a/banner770.gif" class="yaadstracker" id="trck_770">
										</a>
									</div>
									<style>
										@media(max-width: 990px) {
											.lsoon-div-2 {
												display: none;
											}
										}
									</style>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			{% include "template/scripts.tpl" %}

			<link rel="stylesheet" href="assets/css/block-team-result.css"/>

		</div>
	</body>

	<style>
		#wrapper {
			padding-left: 60px;
			transition: all 0.5s ease 0s;
		}
		.pagebg {
			background: #222 0 0;
			padding: 5px;
		}
	</style>
</html>
