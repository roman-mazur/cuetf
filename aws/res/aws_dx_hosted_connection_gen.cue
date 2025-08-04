package res

#aws_dx_hosted_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_hosted_connection")
	close({
		aws_device?:             string
		bandwidth!:              string
		connection_id!:          string
		connection_region?:      string
		has_logical_redundancy?: string
		id?:                     string
		jumbo_frame_capable?:    bool
		lag_id?:                 string
		loa_issue_time?:         string
		location?:               string
		name!:                   string
		owner_account_id!:       string
		partner_name?:           string
		provider_name?:          string
		state?:                  string
		vlan!:                   number
	})
}
