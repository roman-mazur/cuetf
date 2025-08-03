package res

#aws_ssm_maintenance_window: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_maintenance_window")
	close({
		allow_unassociated_targets?: bool
		cutoff!:                     number
		description?:                string
		duration!:                   number
		enabled?:                    bool
		end_date?:                   string
		id?:                         string
		name!:                       string
		region?:                     string
		schedule!:                   string
		schedule_offset?:            number
		schedule_timezone?:          string
		start_date?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
