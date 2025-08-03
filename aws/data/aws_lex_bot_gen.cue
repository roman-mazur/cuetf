package data

#aws_lex_bot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_bot")
	close({
		arn?:                             string
		checksum?:                        string
		child_directed?:                  bool
		created_date?:                    string
		description?:                     string
		detect_sentiment?:                bool
		enable_model_improvements?:       bool
		failure_reason?:                  string
		id?:                              string
		idle_session_ttl_in_seconds?:     number
		last_updated_date?:               string
		locale?:                          string
		name!:                            string
		nlu_intent_confidence_threshold?: number
		region?:                          string
		status?:                          string
		version?:                         string
		voice_id?:                        string
	})
}
