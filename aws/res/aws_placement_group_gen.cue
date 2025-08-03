package res

#aws_placement_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_placement_group")
	close({
		arn?:                string
		id?:                 string
		name!:               string
		partition_count?:    number
		placement_group_id?: string
		region?:             string
		spread_level?:       string
		strategy!:           string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
