package res

#cloudflare_bot_management: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_bot_management")
	ai_bots_protection?:              string
	auto_update_model?:               bool
	enable_js?:                       bool
	fight_mode?:                      bool
	id?:                              string
	optimize_wordpress?:              bool
	sbfm_definitely_automated?:       string
	sbfm_likely_automated?:           string
	sbfm_static_resource_protection?: bool
	sbfm_verified_bots?:              string
	suppress_session_score?:          bool
	using_latest_model?:              bool
	zone_id!:                         string
}
