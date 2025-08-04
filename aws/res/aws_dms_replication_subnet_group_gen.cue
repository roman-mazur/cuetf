package res

#aws_dms_replication_subnet_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dms_replication_subnet_group")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                               string
		replication_subnet_group_arn?:         string
		replication_subnet_group_description!: string
		replication_subnet_group_id!:          string
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})
}
