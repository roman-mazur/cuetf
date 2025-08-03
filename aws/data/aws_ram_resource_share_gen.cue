package data

#aws_ram_resource_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ram_resource_share")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		id?:                string
		name?:              string
		owning_account_id?: string
		region?:            string
		resource_arns?: [...string]
		resource_owner!:        string
		resource_share_status?: string
		status?:                string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
