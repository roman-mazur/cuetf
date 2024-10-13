package res

#aws_dx_lag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dx_lag")
	arn?:                    string
	connection_id?:          string
	connections_bandwidth!:  string
	force_destroy?:          bool
	has_logical_redundancy?: string
	id?:                     string
	jumbo_frame_capable?:    bool
	location!:               string
	name!:                   string
	owner_account_id?:       string
	provider_name?:          string
	tags?: [string]:     string
	tags_all?: [string]: string
}
