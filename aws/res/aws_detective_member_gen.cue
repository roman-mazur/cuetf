package res

#aws_detective_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_detective_member")
	account_id:                  string
	administrator_id?:           string
	disable_email_notification?: bool
	disabled_reason?:            string
	email_address:               string
	graph_arn:                   string
	id?:                         string
	invited_time?:               string
	message?:                    string
	status?:                     string
	updated_time?:               string
	volume_usage_in_bytes?:      string
}
