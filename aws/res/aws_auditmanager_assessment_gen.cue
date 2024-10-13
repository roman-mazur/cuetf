package res

#aws_auditmanager_assessment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_auditmanager_assessment")
	arn?:          string
	description?:  string
	framework_id!: string
	id?:           string
	name!:         string
	roles!: [...{
		role_arn?:  string
		role_type?: string
	}]
	roles_all?: [...{
		role_arn?:  string
		role_type?: string
	}]
	status?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	assessment_reports_destination?: #assessment_reports_destination | [...#assessment_reports_destination]
	scope?: #scope | [...#scope]

	#assessment_reports_destination: {
		destination!:      string
		destination_type!: string
	}

	#scope: {
		aws_accounts?: #scope.#aws_accounts | [...#scope.#aws_accounts]
		aws_services?: #scope.#aws_services | [...#scope.#aws_services]

		#aws_accounts: id!: string

		#aws_services: service_name!: string
	}
}
