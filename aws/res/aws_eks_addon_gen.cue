package res

#aws_eks_addon: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_addon")
	addon_name!:                  string
	addon_version?:               string
	arn?:                         string
	cluster_name!:                string
	configuration_values?:        string
	created_at?:                  string
	id?:                          string
	modified_at?:                 string
	preserve?:                    bool
	resolve_conflicts_on_create?: string
	resolve_conflicts_on_update?: string
	service_account_role_arn?:    string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
