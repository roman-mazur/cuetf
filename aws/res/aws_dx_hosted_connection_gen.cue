package res

#aws_dx_hosted_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dx_hosted_connection")
	aws_device?:             string
	bandwidth:               string
	connection_id:           string
	has_logical_redundancy?: string
	id?:                     string
	jumbo_frame_capable?:    bool
	lag_id?:                 string
	loa_issue_time?:         string
	location?:               string
	name:                    string
	owner_account_id:        string
	partner_name?:           string
	provider_name?:          string
	region?:                 string
	state?:                  string
	vlan:                    number
}