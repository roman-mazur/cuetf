package res

#cloudflare_bot_management: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_bot_management")
	close({
		// Enable rule to block AI Scrapers and Crawlers. Please note the
		// value `only_on_ad_pages` is currently not available for
		// Enterprise customers.
		// Available values: "block", "disabled", "only_on_ad_pages".
		ai_bots_protection?: string

		// Automatically update to the newest bot detection models created
		// by Cloudflare as they are released. [Learn
		// more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
		auto_update_model?: bool

		// Enable rule to punish AI Scrapers and Crawlers via a link maze.
		// Available values: "enabled", "disabled".
		crawler_protection?: string

		// Use lightweight, invisible JavaScript detections to improve Bot
		// Management. [Learn more about JavaScript
		// Detections](https://developers.cloudflare.com/bots/reference/javascript-detections/).
		enable_js?: bool

		// Whether to enable Bot Fight Mode.
		fight_mode?: bool

		// A read-only field that shows which unauthorized settings are
		// currently active on the zone. These settings typically result
		// from upgrades or downgrades.
		stale_zone_configuration?: close({
			// Indicates that the zone's Bot Fight Mode is turned on.
			fight_mode?: bool

			// Indicates that the zone's wordpress optimization for SBFM is
			// turned on.
			optimize_wordpress?: bool

			// Indicates that the zone's definitely automated requests are
			// being blocked or challenged.
			sbfm_definitely_automated?: string

			// Indicates that the zone's likely automated requests are being
			// blocked or challenged.
			sbfm_likely_automated?: string

			// Indicates that the zone's static resource protection is turned
			// on.
			sbfm_static_resource_protection?: string

			// Indicates that the zone's verified bot requests are being
			// blocked.
			sbfm_verified_bots?: string

			// Indicates that the zone's session score tracking is disabled.
			suppress_session_score?: bool
		})

		// Identifier.
		id?: string

		// Whether to optimize Super Bot Fight Mode protections for
		// Wordpress.
		optimize_wordpress?: bool

		// Super Bot Fight Mode (SBFM) action to take on definitely
		// automated requests.
		// Available values: "allow", "block", "managed_challenge".
		sbfm_definitely_automated?: string

		// Super Bot Fight Mode (SBFM) action to take on likely automated
		// requests.
		// Available values: "allow", "block", "managed_challenge".
		sbfm_likely_automated?: string

		// Super Bot Fight Mode (SBFM) to enable static resource
		// protection.
		// Enable if static resources on your application need bot
		// protection.
		// Note: Static resource protection can also result in legitimate
		// traffic being blocked.
		sbfm_static_resource_protection?: bool

		// Super Bot Fight Mode (SBFM) action to take on verified bots
		// requests.
		// Available values: "allow", "block".
		sbfm_verified_bots?: string

		// Whether to disable tracking the highest bot score for a session
		// in the Bot Management cookie.
		suppress_session_score?: bool

		// A read-only field that indicates whether the zone currently is
		// running the latest ML model.
		using_latest_model?: bool

		// Identifier.
		zone_id!: string
	})
}
