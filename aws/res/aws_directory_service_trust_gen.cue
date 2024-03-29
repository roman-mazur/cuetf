package res

#aws_directory_service_trust: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_directory_service_trust")
	conditional_forwarder_ip_addrs?: [...string]
	created_date_time?:                       string
	delete_associated_conditional_forwarder?: bool
	directory_id:                             string
	id?:                                      string
	last_updated_date_time?:                  string
	remote_domain_name:                       string
	selective_auth?:                          string
	state_last_updated_date_time?:            string
	trust_direction:                          string
	trust_password:                           string
	trust_state?:                             string
	trust_state_reason?:                      string
	trust_type?:                              string
}
