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
		region?:       string
		assessment_reports_destination?: matchN(1, [#assessment_reports_destination, [...#assessment_reports_destination]])
		roles_all?: [...close({
			role_arn?:  string
			role_type?: string
		})]
		roles?: matchN(1, [#roles, [...#roles]])
		scope?: matchN(1, [#scope, [...#scope]])
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
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
