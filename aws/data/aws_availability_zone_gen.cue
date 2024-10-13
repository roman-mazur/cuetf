package data

#aws_availability_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_availability_zone")
	all_availability_zones?: bool
	group_name?:             string
	id?:                     string
	name?:                   string
	name_suffix?:            string
	network_border_group?:   string
	opt_in_status?:          string
	parent_zone_id?:         string
	parent_zone_name?:       string
	region?:                 string
	state?:                  string
	zone_id?:                string
	zone_type?:              string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
