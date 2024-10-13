package res

#elasticstack_fleet_integration_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_fleet_integration_policy")
	agent_policy_id!:     string
	description?:         string
	enabled?:             bool
	force?:               bool
	id?:                  string
	integration_name!:    string
	integration_version!: string
	name!:                string
	namespace!:           string
	policy_id?:           string
	vars_json?:           string
	input?: #input | [...#input]

	#input: {
		enabled?:      bool
		input_id!:     string
		streams_json?: string
		vars_json?:    string
	}
}
