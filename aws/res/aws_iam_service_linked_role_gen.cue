package res

#aws_iam_service_linked_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iam_service_linked_role")
	close({
		arn?:              string
		aws_service_name!: string
		create_date?:      string
		custom_suffix?:    string
		description?:      string
		id?:               string
		name?:             string
		path?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		unique_id?: string
	})
}
