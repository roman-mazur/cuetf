package data

#cloudflare_bot_management: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_bot_management")
	close({
		ai_bots_protection?: string
		auto_update_model?:  bool
		crawler_protection?: string
		enable_js?:          bool
		fight_mode?:         bool
		stale_zone_configuration?: close({
			fight_mode?:                      bool
			optimize_wordpress?:              bool
			sbfm_definitely_automated?:       string
			sbfm_likely_automated?:           string
			sbfm_static_resource_protection?: string
			sbfm_verified_bots?:              string
			suppress_session_score?:          bool
		})
		optimize_wordpress?:              bool
		sbfm_definitely_automated?:       string
		sbfm_likely_automated?:           string
		sbfm_static_resource_protection?: bool
		sbfm_verified_bots?:              string
		suppress_session_score?:          bool
		using_latest_model?:              bool
		zone_id!:                         string
	})
}
