package res

#aws_sns_platform_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sns_platform_application")
	close({
		apple_platform_bundle_id?:         string
		apple_platform_team_id?:           string
		arn?:                              string
		event_delivery_failure_topic_arn?: string
		event_endpoint_created_topic_arn?: string
		event_endpoint_deleted_topic_arn?: string
		event_endpoint_updated_topic_arn?: string
		failure_feedback_role_arn?:        string
		id?:                               string
		name!:                             string
		platform!:                         string
		platform_credential!:              string
		platform_principal?:               string
		region?:                           string
		success_feedback_role_arn?:        string
		success_feedback_sample_rate?:     string
	})
}
