{% set title = "GT DEV" %}

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
						<div class="row">
							<div class="col-sm-12 col-md-8">

								{% include "template/site/team/team-header.tpl" %}

								{% include "template/site/team/team-matches.tpl" %}

								{% include "template/site/team/team-achievments.tpl" %}

								<div class="well bg-info">
									* Форма показывает насколько хороши текущие показатели игроков команды (последние 15 игр), относительно их средних показателей (последние 50 игр)
								</div>

								{% include "template/site/team/text-block.tpl" %}

							</div>
							<div class="col-sm-12 col-md-4">
								<div class="col-right">
									{% include "template/site/team/team-players-block.tpl" %}

									{% include "template/site/blocks/news-block.tpl" %}

									<div class="box livebet lsoon-div lsoon-div-2">
										<a href="/go?n=770" target="_blank">
											<img src="https://game-tournaments.com/media/a/banner1097.gif" class="yaadstracker" id="trck_770">
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
			</section>
			{% include "template/footer.tpl" %}
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
