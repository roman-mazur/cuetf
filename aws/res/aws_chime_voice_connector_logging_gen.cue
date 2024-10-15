package res

#aws_chime_voice_connector_logging: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chime_voice_connector_logging")
	enable_media_metric_logs?: bool
	enable_sip_logs?:          bool
	id?:                       string
	voice_connector_id!:       string
}
