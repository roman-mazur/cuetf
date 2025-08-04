package res

#aws_auditmanager_assessment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_auditmanager_assessment")
	close({
		arn?:          string
		description?:  string
		framework_id!: string
		id?:           string
		name!:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		assessment_reports_destination?: matchN(1, [#assessment_reports_destination, [...#assessment_reports_destination]])
		roles?: matchN(1, [#roles, [...#roles]])
		roles_all?: [...close({
			role_arn?:  string
			role_type?: string
		})]
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		scope?: matchN(1, [#scope, [...#scope]])
	})

	#assessment_reports_destination: close({
		destination!:      string
		destination_type!: string
	})

	#roles: close({
		role_arn!:  string
		role_type!: string
	})

	#scope: close({
		aws_accounts?: matchN(1, [_#defs."/$defs/scope/$defs/aws_accounts", [..._#defs."/$defs/scope/$defs/aws_accounts"]])
		aws_services?: matchN(1, [_#defs."/$defs/scope/$defs/aws_services", [..._#defs."/$defs/scope/$defs/aws_services"]])
	})

	_#defs: "/$defs/scope/$defs/aws_accounts": close({
		id!: string
	})

	_#defs: "/$defs/scope/$defs/aws_services": close({
		service_name!: string
	})
}
