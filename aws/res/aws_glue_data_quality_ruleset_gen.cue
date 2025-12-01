package res

import "list"

#aws_glue_data_quality_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_glue_data_quality_ruleset")
	close({
		arn?:              string
		created_on?:       string
		description?:      string
		id?:               string
		last_modified_on?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		target_table?: matchN(1, [#target_table, list.MaxItems(1) & [...#target_table]])
		name!:                  string
		recommendation_run_id?: string
		ruleset!:               string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#target_table: close({
		catalog_id?:    string
		database_name!: string
		table_name!:    string
	})
}
